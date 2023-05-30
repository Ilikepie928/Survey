# Survey
Basically making like a survey app thing


I am making this too learn QML but when i usually do

function onResponse() {
  //do smth
}

it would usually work, but in this case it doesnt.

ive tried 
onResponse: {
}
even though it is deprecated, and yes it doesnt work.

I think the issue im having is this

    Connections {
        target: obj
        function onResponse(input) {
            name.text = "hi";
            console.log("hi");
        }
    }
