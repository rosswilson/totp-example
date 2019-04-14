import qrcode from 'qrcode-generator'

function generate(element) {
  const typeNumber = 10
  const errorCorrectionLevel = 'L'

  const qr = qrcode(typeNumber, errorCorrectionLevel)
  qr.addData(element.dataset.qr)
  qr.make()

  element.innerHTML = qr.createImgTag(6)
}

function initialise() {
  const selectors = document.querySelectorAll("[data-qr]")

  selectors.forEach(generate)
}

export default initialise