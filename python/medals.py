#This is the points object
#it shows the mapping of position on the podium to the number of points for the team
points = {
    "1": 3,
    "2": 2,
    "3": 1
}

medalResults = [
    {
        "sport": "cycling",
        "podium": [
            "1.China",
            "2.Germany",
            "3.ROC"
        ]
    },
    {
        "sport": "fencing",
        "podium": [
            "1.ROC",
            "2.France",
            "3.Italy"
        ]
    },
    {
        "sport": "highjump",
        "podium": [
            "1.Italy",
            "1.Qatar",
            "3.Belarus"
        ]
    },
    {
        "sport": "swimming",
        "podium": [
            "1.USA",
            "2.France",
            "3.Brazil"
        ]
    }
]

def createMedalTable(results):
    # Use the results and points objects above to create a medal table
    return


def test_function():
    #This it the test function, please don't change me
    medalTable = createMedalTable(medalResults)
    expectedTable = {
        "Italy": 4,
        "France": 4,
        "ROC": 4,
        "USA": 3,
        "Qatar": 3,
        "China": 3,
        "Germany": 2,
        "Brazil": 1,
        "Belarus": 1,
    }
    assert medalTable == expectedTable
