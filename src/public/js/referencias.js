/* ═══════════════════════════════════════════════════════════
   referencias.js  ·  Cliente del Sistema de Referencias ICO
═══════════════════════════════════════════════════════════ */

/* ── Mapeo tipo → sección de subtipo ─────────────────────── */
const TIPO_NOMBRES = {
  "Libro":               "libro",
  "Tesis":               "tesis",
  "Artículo de Revista": "articulo",
  "Página Web":          "web",
};

// Obtiene el nombre del tipo por su id_tipo
async function getNombreTipo(idTipo) {
  // El select ya tiene el nombre como texto; lo leemos de ahí
  const select = document.getElementById("id_tipo_fuente");
  if (!select) return null;
  const option = select.querySelector(`option[value="${idTipo}"]`);
  return option ? option.textContent.trim() : null;
}

/* ── Mostrar sección de subtipo según selección ────────────  */
async function mostrarSubtipo(idTipo) {
  // Ocultar todos
  document.querySelectorAll(".subtipo-section").forEach(s => {
    s.classList.remove("visible");
  });

  if (!idTipo) return;

  const nombre = await getNombreTipo(idTipo);
  if (!nombre) return;

  const key = TIPO_NOMBRES[nombre];
  if (!key) return;

  const seccion = document.getElementById(`subtipo-${key}`);
  if (seccion) seccion.classList.add("visible");
}

/* ── Agregar fila de autor dinámicamente ─────────────────── */
let contadorAutores = 1;

function agregarAutorRow() {
  const container = document.getElementById("autores-container");
  if (!container) return;

  const row = document.createElement("div");
  row.className = "autor-row";
  row.innerHTML = `
    <div>
      <label class="field-label">Nombre(s) *</label>
      <input class="field-input" type="text" name="autor_nombres[]" placeholder="Nombre(s)">
    </div>
    <div>
      <label class="field-label">Apellido paterno *</label>
      <input class="field-input" type="text" name="autor_ap[]" placeholder="Apellido paterno">
    </div>
    <div>
      <label class="field-label">Apellido materno</label>
      <input class="field-input" type="text" name="autor_am[]" placeholder="Apellido materno">
    </div>
    <div>
      <label class="field-label" style="visibility:hidden">x</label>
      <button class="btn-remove-autor" type="button" onclick="eliminarAutorRow(this)">✕</button>
    </div>
  `;
  container.appendChild(row);
  contadorAutores++;
}

function eliminarAutorRow(btn) {
  const row = btn.closest(".autor-row");
  const container = document.getElementById("autores-container");

  // No eliminar si es la única fila
  if (container && container.children.length > 1) {
    row.remove();
  }
}

/* ── Selector de formato de cita ─────────────────────────── */
function seleccionarFormato(labelEl, idFormato) {
  document.querySelectorAll(".formato-card").forEach(c => c.classList.remove("selected"));
  labelEl.classList.add("selected");
  const input = labelEl.querySelector("input[type=radio]");
  if (input) input.checked = true;
}

/* ── Copiar texto al portapapeles ────────────────────────── */
function copiarTexto(elementId) {
  const el = document.getElementById(elementId);
  if (!el) return;
  const texto = el.textContent || el.value;
  _copiarAlClipboard(texto);
}

function copiarTextoDirecto(texto) {
  _copiarAlClipboard(texto);
}

function _copiarAlClipboard(texto) {
  if (navigator.clipboard) {
    navigator.clipboard.writeText(texto).then(() => {
      _flashCopied();
    });
  } else {
    // Fallback
    const ta = document.createElement("textarea");
    ta.value = texto;
    ta.style.position = "fixed";
    ta.style.left = "-9999px";
    document.body.appendChild(ta);
    ta.select();
    document.execCommand("copy");
    document.body.removeChild(ta);
    _flashCopied();
  }
}

function _flashCopied() {
  const btns = document.querySelectorAll(".btn-copy");
  btns.forEach(b => {
    const original = b.textContent;
    b.textContent = "✓ Copiado";
    b.classList.add("copied");
    setTimeout(() => {
      b.textContent = original;
      b.classList.remove("copied");
    }, 1800);
  });
}

/* ── Filtrar tabla de referencias ────────────────────────── */
function filtrarReferencias(query) {
  const q = query.toLowerCase();
  const rows = document.querySelectorAll("#tabla-refs tbody tr");
  rows.forEach(tr => {
    const titulo  = tr.dataset.titulo  || "";
    const autores = tr.dataset.autores || "";
    tr.style.display = (titulo.includes(q) || autores.includes(q)) ? "" : "none";
  });
}

/* ── Filtrar tabla de autores ────────────────────────────── */
function filtrarAutores(query) {
  const q = query.toLowerCase();
  const rows = document.querySelectorAll("#tabla-autores tbody tr");
  rows.forEach(tr => {
    const nombre = tr.dataset.nombre || "";
    tr.style.display = nombre.includes(q) ? "" : "none";
  });
}

/* ── Init ────────────────────────────────────────────────── */
document.addEventListener("DOMContentLoaded", () => {
  // Si hay un select de tipo y ya tiene valor (edición), mostrar subtipo
  const selectTipo = document.getElementById("id_tipo_fuente");
  if (selectTipo && selectTipo.value) {
    mostrarSubtipo(selectTipo.value);
  }

  // Marcar nav-link activo según ruta actual
  const path = window.location.pathname;
  document.querySelectorAll(".nav-link").forEach(link => {
    const href = link.getAttribute("href");
    if (href && href !== "/" && path.startsWith(href)) {
      link.classList.add("active");
    }
  });
});

/* ══════════════════════════════════════════════════════════
   SELECTOR ENCADENADO: Área → Materia → Temas
══════════════════════════════════════════════════════════ */

/**
 * Paso 1: el usuario elige un área.
 * Poblamos el select de materias y reseteamos temas.
 */
function cargarMaterias(idArea) {
  const selMateria    = document.getElementById("sel-materia");
  const temasContainer = document.getElementById("temas-container");
  const placeholder    = document.getElementById("temas-placeholder");

  // Resetear materia
  selMateria.innerHTML = '<option value="">— Seleccionar materia —</option>';
  selMateria.disabled  = true;

  // Resetear temas
  if (temasContainer) {
    temasContainer.innerHTML = '<p id="temas-placeholder" style="font-size:.78rem;color:var(--text-muted);margin:0">Elige una materia primero.</p>';
  }

  if (!idArea || !window.AREAS_DATA) return;

  const area = window.AREAS_DATA.find(a => String(a.id_area) === String(idArea));
  if (!area || !area.materias?.length) return;

  area.materias.forEach(m => {
    const opt = document.createElement("option");
    opt.value       = m.id_materia;
    opt.textContent = m.nombre;
    selMateria.appendChild(opt);
  });

  selMateria.disabled = false;
}

/**
 * Paso 2: el usuario elige una materia.
 * Mostramos checkboxes de temas (selección múltiple).
 */
function cargarTemas(idMateria) {
  const temasContainer = document.getElementById("temas-container");
  if (!temasContainer) return;

  temasContainer.innerHTML = "";

  if (!idMateria || !window.AREAS_DATA) {
    temasContainer.innerHTML = '<p style="font-size:.78rem;color:var(--text-muted);margin:0">Elige una materia primero.</p>';
    return;
  }

  // Buscar la materia dentro de todas las áreas
  let temas = [];
  for (const area of window.AREAS_DATA) {
    const mat = area.materias?.find(m => String(m.id_materia) === String(idMateria));
    if (mat) { temas = mat.temas || []; break; }
  }

  if (!temas.length) {
    temasContainer.innerHTML = '<p style="font-size:.78rem;color:var(--text-muted);margin:0">Esta materia no tiene temas registrados.</p>';
    return;
  }

  // IDs ya seleccionados (modo edición)
  const preSeleccionados = window.TEMAS_SELECCIONADOS || [];

  temas.forEach(t => {
    const label = document.createElement("label");
    label.style.cssText = "display:flex;align-items:center;gap:.45rem;padding:.3rem 0;font-size:.83rem;cursor:pointer;border-bottom:1px solid var(--border)";

    const cb = document.createElement("input");
    cb.type    = "checkbox";
    cb.name    = "temas[]";
    cb.value   = t.id_tema;
    cb.checked = preSeleccionados.includes(t.id_tema);
    cb.style.accentColor = "var(--blue)";

    const num = t.numero_tema ? `<span style="font-family:'IBM Plex Mono',monospace;font-size:.7rem;color:var(--text-muted);margin-right:.25rem">${String(t.numero_tema).padStart(2,"0")}.</span>` : "";
    label.appendChild(cb);
    label.insertAdjacentHTML("beforeend", num + t.nombre);
    temasContainer.appendChild(label);
  });
}

/**
 * Al cargar en modo EDICIÓN: si hay temas pre-seleccionados,
 * auto-seleccionar el área y materia correctas y renderizar los checkboxes.
 */
function iniciarSelectorEdicion() {
  if (!window.TEMAS_SELECCIONADOS?.length || !window.AREAS_DATA) return;

  const primerIdTema = window.TEMAS_SELECCIONADOS[0];

  // Encontrar área y materia del primer tema
  for (const area of window.AREAS_DATA) {
    for (const mat of area.materias || []) {
      const temaEncontrado = mat.temas?.find(t => t.id_tema === primerIdTema);
      if (temaEncontrado) {
        // Seleccionar área
        const selArea = document.getElementById("sel-area");
        if (selArea) {
          selArea.value = area.id_area;
          cargarMaterias(area.id_area);
        }
        // Seleccionar materia (pequeño delay para que el DOM se actualice)
        setTimeout(() => {
          const selMateria = document.getElementById("sel-materia");
          if (selMateria) {
            selMateria.value = mat.id_materia;
            cargarTemas(mat.id_materia);
          }
        }, 50);
        return;
      }
    }
  }
}

/* ══════════════════════════════════════════════════════════
   FILTRO POR ÁREA / MATERIA / TEMA en lista de referencias
══════════════════════════════════════════════════════════ */

function aplicarFiltros() {
  const q        = (document.getElementById("buscar")?.value || "").toLowerCase();
  const idArea   = document.getElementById("filtro-area")?.value;
  const idMateria= document.getElementById("filtro-materia")?.value;
  const idTema   = document.getElementById("filtro-tema")?.value;

  document.querySelectorAll("#tabla-refs tbody tr").forEach(tr => {
    const titulo   = tr.dataset.titulo   || "";
    const autores  = tr.dataset.autores  || "";
    const temasTr  = (tr.dataset.temas   || "").split(",").filter(Boolean);
    const materias = (tr.dataset.materias|| "").split(",").filter(Boolean);
    const areas    = (tr.dataset.areas   || "").split(",").filter(Boolean);

    const pasaTexto   = !q       || titulo.includes(q) || autores.includes(q);
    const pasaArea    = !idArea  || areas.includes(idArea);
    const pasaMateria = !idMateria || materias.includes(idMateria);
    const pasaTema    = !idTema  || temasTr.includes(idTema);

    tr.style.display = (pasaTexto && pasaArea && pasaMateria && pasaTema) ? "" : "none";
  });
}

function filtrarAreasLista(idArea) {
  const selMateria = document.getElementById("filtro-materia");
  const selTema    = document.getElementById("filtro-tema");

  selMateria.innerHTML = '<option value="">— Todas las materias —</option>';
  selMateria.disabled  = true;
  selTema.innerHTML    = '<option value="">— Todos los temas —</option>';
  selTema.disabled     = true;

  if (!idArea || !window.AREAS_DATA) { aplicarFiltros(); return; }

  const area = window.AREAS_DATA.find(a => String(a.id_area) === String(idArea));
  if (!area) { aplicarFiltros(); return; }

  (area.materias || []).forEach(m => {
    const opt = document.createElement("option");
    opt.value = m.id_materia; opt.textContent = m.nombre;
    selMateria.appendChild(opt);
  });
  selMateria.disabled = false;
  aplicarFiltros();
}

function filtrarMateriasLista(idMateria) {
  const selTema = document.getElementById("filtro-tema");
  selTema.innerHTML = '<option value="">— Todos los temas —</option>';
  selTema.disabled  = true;

  if (!idMateria || !window.AREAS_DATA) { aplicarFiltros(); return; }

  for (const area of window.AREAS_DATA) {
    const mat = (area.materias || []).find(m => String(m.id_materia) === String(idMateria));
    if (mat) {
      (mat.temas || []).forEach(t => {
        const opt = document.createElement("option");
        opt.value = t.id_tema;
        opt.textContent = (t.numero_tema ? t.numero_tema + ". " : "") + t.nombre;
        selTema.appendChild(opt);
      });
      selTema.disabled = false;
      break;
    }
  }
  aplicarFiltros();
}

// Arrancar modo edición si aplica
document.addEventListener("DOMContentLoaded", () => {
  iniciarSelectorEdicion();
});