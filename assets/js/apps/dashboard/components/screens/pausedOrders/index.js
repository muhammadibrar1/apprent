import React, {Component, Fragment} from 'react';
import {Row, Col, ModalHeader, ModalBody, Table, ModalFooter, Collapse, Button} from 'reactstrap';
import {connect} from "react-redux";
import actions from '../../../actions';
import Checkbox from "../../../../../components/fancyCheck/index";
import confirmation from '../../../../../components/confirmationModal/index';
import PausedOrder from './pausedOrder'
import Pagination from "../../../../../components/simplePagination";

class PausedOrders extends Component {
  state = {
    selectedPartsIDs: []
  }

  headers = {columns: [
      {label: 'Property', min: true},
      {label: 'Unit', min: true}
    ], style: {color: '#7d7d7d'}};

  _filters() {

  }

  selectPart(id) {
    let selectedPartsIDs = this.state.selectedPartsIDs;
    selectedPartsIDs.includes(id) ? selectedPartsIDs.splice(selectedPartsIDs.indexOf(id), 1) : selectedPartsIDs.push(id);
    this.setState({...this.state, selectedPartsIDs: selectedPartsIDs});
  }

  render() {
    const {info} = this.props;
    const {selectedPartsIDs} = this.state;
    return <Fragment>
      <ModalHeader>
        Currently Paused Orders
        <br/>
        <small>Below are the currently paused orders.</small>
      </ModalHeader>
      <ModalBody>
        <Pagination
            title="Paused Orders"
            collection={info}
            component={PausedOrder}
            headers={this.headers}
            filters={this._filters()}
            field="order"
            hover={true}
        />
      </ModalBody>
      <Collapse isOpen={selectedPartsIDs.length >= 1}>
        <ModalFooter>
          <Button outline color="success" >Update Parts</Button>
        </ModalFooter>
      </Collapse>
    </Fragment>
  }
}


export default connect(({propertyReport}) => {
  return {info: propertyReport.maintenance_info.currently_on_hold};
})(PausedOrders);