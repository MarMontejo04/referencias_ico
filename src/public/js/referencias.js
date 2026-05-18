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
