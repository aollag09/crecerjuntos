import {PolymerElement, html} from '@polymer/polymer';
import '@google-web-components/google-chart/google-chart.js';

class GoogleChart extends PolymerElement {

  static get template() {
    return html`
      <google-chart data='[["Month", "Days"], ["Jan", 31]]'></google-chart>
    `;
  }

  static get is() {
     return 'google-chart';
  }
}
customElements.define(GoogleChart.is, GoogleChart);


