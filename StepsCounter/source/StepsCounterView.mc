using Toybox.WatchUi as Ui;

class StepsCounterView extends Ui.SimpleDataField {

	function initialize() {
        SimpleDataField.initialize();
        var stepsInfo = Toybox.ActivityMonitor.getInfo();
        var stepsGoal = stepsInfo.stepGoal;
        label = stepsGoal.toString();
    }
    
    function compute(info) {
        var stepsInfo = Toybox.ActivityMonitor.getInfo();
        var stepsDone = stepsInfo.steps;
        
        return stepsDone;
    }
}