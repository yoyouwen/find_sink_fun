python sanity.py  planninginst.out $1    >out.txt  
result=$(find -name 'out.txt'|xargs grep 'ReferenceLineInfo::AddObstacle')
if [[ "$result" != "" ]]
then
    echo "ReferenceLineInfo::AddObstacle"
fi


result=$(find -name 'out.txt'|xargs grep 'ReferenceLineInfo::SetJunctionRightOfWay')
if [[ "$result" != "" ]]
then
    echo "ReferenceLineInfo::SetJunctionRightOfWay"
fi


result=$(find -name 'out.txt'|xargs grep 'ReferenceLineInfo::ExportEngageAdvice')
if [[ "$result" != "" ]]
then
    echo "ReferenceLineInfo::ExportEngageAdvice"
fi

result=$(find -name 'out.txt'|xargs grep 'ReferenceLineInfo::ExportTurnSignal')
if [[ "$result" != "" ]]
then
    echo "ReferenceLineInfo::ExportTurnSignal"
fi

result=$(find -name 'out.txt'|xargs grep 'ReferenceLineInfo::MakeMainStopDecision')
if [[ "$result" != "" ]]
then
    echo "ReferenceLineInfo::MakeMainStopDecision"
fi

result=$(find -name 'out.txt'|xargs grep 'PathObstacle::AddLongitudinalDecision')
if [[ "$result" != "" ]]
then
    echo "PathObstacle::AddLongitudinalDecision"
fi

result=$(find -name 'out.txt'|xargs grep 'PathObstacle::AddLateralDecision')
if [[ "$result" != "" ]]
then
    echo "PathObstacle::AddLateralDecision"
fi

result=$(find -name 'out.txt'|xargs grep 'PathDecision::MergeWithMainStop')
if [[ "$result" != "" ]]
then
    echo "PathDecision::MergeWithMainStop"
fi

result=$(find -name 'out.txt'|xargs grep 'SpeedDecider::CreateStopDecision')
if [[ "$result" != "" ]]
then
    echo "SpeedDecider::CreateStopDecision"
fi

result=$(find -name 'out.txt'|xargs grep 'SpeedDecider::CreateFollowDecision')
if [[ "$result" != "" ]]
then
    echo "SpeedDecider::CreateFollowDecision"
fi

result=$(find -name 'out.txt'|xargs grep 'SpeedDecider::CreateYieldDecision')
if [[ "$result" != "" ]]
then
    echo "SpeedDecider::CreateYieldDecision"
fi

result=$(find -name 'out.txt'|xargs grep 'SpeedDecider::CreateOvertakeDecision')
if [[ "$result" != "" ]]
then
    echo "SpeedDecider::CreateOvertakeDecision"
fi

result=$(find -name 'out.txt'|xargs grep 'SpeedDecider::AppendIgnoreDecision')
if [[ "$result" != "" ]]
then
    echo "SpeedDecider::AppendIgnoreDecision"
fi

result=$(find -name 'out.txt'|xargs grep 'ChangeLaneDecider::UpdateStatus')
if [[ "$result" != "" ]]
then
    echo "ChangeLaneDecider::UpdateStatus"
fi

result=$(find -name 'out.txt'|xargs grep 'ChangeLane::CreateGuardObstacle')
if [[ "$result" != "" ]]
then
    echo "ChangeLane::CreateGuardObstacle"
fi

result=$(find -name 'out.txt'|xargs grep 'ChangeLane::CreateOvertakeDecision')
if [[ "$result" != "" ]]
then
    echo "ChangeLane::CreateOvertakeDecision"
fi

result=$(find -name 'out.txt'|xargs grep 'Destination::Stop')
if [[ "$result" != "" ]]
then
    echo "Destination::Stop"
fi

result=$(find -name 'out.txt'|xargs grep 'Destination::PullOver')
if [[ "$result" != "" ]]
then
    echo "Destination::PullOver"
fi

result=$(find -name 'out.txt'|xargs grep 'StopSign::AddWatchVehicle')
if [[ "$result" != "" ]]
then
    echo "StopSign::AddWatchVehicle"
fi

result=$(find -name 'out.txt'|xargs grep 'StopSign::UpdateWatchVehicles')
if [[ "$result" != "" ]]
then
    echo "StopSign::UpdateWatchVehicles"
fi

result=$(find -name 'out.txt'|xargs grep 'StopSign::RemoveWatchVehicle')
if [[ "$result" != "" ]]
then
    echo "StopSign::RemoveWatchVehicle"
fi

result=$(find -name 'out.txt'|xargs grep 'StopSign::ClearWatchVehicle')
if [[ "$result" != "" ]]
then
    echo "StopSign::ClearWatchVehicle"
fi

result=$(find -name 'out.txt'|xargs grep 'PullOver::BuildPullOverStop')
if [[ "$result" != "" ]]
then
    echo "PullOver::BuildPullOverStop"
fi

result=$(find -name 'out.txt'|xargs grep 'PullOver::BuildInLaneStop')
if [[ "$result" != "" ]]
then
    echo "PullOver::BuildInLaneStop"
fi

result=$(find -name 'out.txt'|xargs grep 'Frame::CreateStopObstacle')
if [[ "$result" != "" ]]
then
    echo "Frame::CreateStopObstacle"
fi

result=$(find -name 'out.txt'|xargs grep 'Frame::CreateStaticObstacle')
if [[ "$result" != "" ]]
then
    echo "Frame::CreateStaticObstacle"
fi

result=$(find -name 'out.txt'|xargs grep 'Frame::Rerouting')
if [[ "$result" != "" ]]
then
    echo "Frame::Rerouting"
fi

result=$(find -name 'out.txt'|xargs grep 'ReferenceLine::AddSpeedLimit')
if [[ "$result" != "" ]]
then
    echo "ReferenceLine::AddSpeedLimit"
fi


