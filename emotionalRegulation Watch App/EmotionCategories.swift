//
//  EmotionCategories.swift
//  emotionalRegulation Watch App
//
//  Created by Wasay Saeed on 2023-03-30.
//

import SwiftUI
import Foundation
import UIKit

struct emotionCategories {
    static var moodList: [MoodType] = [
        MoodType(
            name: "Happy",
            emotionList: [
                EmotionType(
                    name: "Playful",
                    feelingList: [
                        FeelingType(name: "Aroused", parent: "Playful"),
                        FeelingType(name: "Cheeky", parent: "Playful")]),
                EmotionType(
                    name: "Content",
                    feelingList: [
                        FeelingType(name: "Free", parent: "Content"),
                        FeelingType(name: "Joyful", parent: "Content")]),
                EmotionType(
                    name: "Interested",
                    feelingList: [
                        FeelingType(name: "Curious", parent: "Interested"),
                        FeelingType(name: "Inquisitive", parent: "Interested")]),
                EmotionType(
                    name: "Proud",
                    feelingList: [
                        FeelingType(name: "Successful", parent: "Proud"),
                        FeelingType(name: "Confident", parent: "Proud")]),
                EmotionType(
                    name: "Accepted",
                    feelingList: [
                        FeelingType(name: "Respected", parent: "Accepted"),
                        FeelingType(name: "Valued", parent: "Accepted")]),
                EmotionType(
                    name: "Powerful",
                    feelingList: [
                        FeelingType(name: "Courageous", parent: "Powerful"),
                        FeelingType(name: "Creative", parent: "Powerful")]),
                EmotionType(
                    name: "Peaceful",
                    feelingList: [
                        FeelingType(name: "Loving", parent: "Peaceful"),
                        FeelingType(name: "Thankful", parent: "Peaceful")]),
                EmotionType(
                    name: "Trusting",
                    feelingList: [
                        FeelingType(name: "Sensitive", parent: "Trusting"),
                        FeelingType(name: "Intimate", parent: "Trusting")]),
                EmotionType(
                    name: "Optimistic",
                    feelingList: [
                        FeelingType(name: "Hopeful", parent: "Optimistic"),
                        FeelingType(name: "Inspired", parent: "Optimistic")])
            ]),
        MoodType(
            name: "Sad",
            emotionList: [
                EmotionType(
                    name: "Lonely",
                    feelingList: [
                        FeelingType(name: "Isolated", parent: "Lonely"),
                        FeelingType(name: "Abandoned", parent: "Lonely")]),
                EmotionType(
                    name: "Vulnerable",
                    feelingList: [
                        FeelingType(name: "Victimized", parent: "Vulnerable"),
                        FeelingType(name: "Fragile", parent: "Vulnerable")]),
                EmotionType(
                    name: "Despair",
                    feelingList: [
                        FeelingType(name: "Grief", parent: "Despair"),
                        FeelingType(name: "Powerless", parent: "Despair")]),
                EmotionType(
                    name: "Guilty",
                    feelingList: [
                        FeelingType(name: "Ashamed", parent: "Guilty"),
                        FeelingType(name: "Remorseful", parent: "Guilty")]),
                EmotionType(
                    name: "Depressed",
                    feelingList: [
                        FeelingType(name: "Inferior", parent: "Depressed"),
                        FeelingType(name: "Empty", parent: "Depressed")]),
                EmotionType(
                    name: "Hurt",
                    feelingList: [
                        FeelingType(name: "Embarassed", parent: "Hurt"),
                        FeelingType(name: "Disappointed", parent: "Hurt")])
            ]),
        MoodType(
            name: "Disgusted",
            emotionList: [
                EmotionType(
                    name: "Disapproving",
                    feelingList: [
                        FeelingType(name: "Embarassed", parent: "Disappointed"),
                        FeelingType(name: "Judgemental", parent: "Disappointed")
                    ]),
                EmotionType(
                    name: "Disappointed",
                    feelingList: [
                        FeelingType(name: "Appalled", parent: "Disappointed"),
                        FeelingType(name: "Revolted", parent: "Disappointed")
                    ]),
                EmotionType(
                    name: "Awful",
                    feelingList: [
                        FeelingType(name: "Nauseated", parent: "Awful"),
                        FeelingType(name: "Detestful", parent: "Awful")
                    ]),
                EmotionType(
                    name: "Repelled",
                    feelingList: [
                        FeelingType(name: "Horrified", parent: "Repelled"),
                        FeelingType(name: "Hesitant", parent: "Repelled")
                    ])
        ]),
        MoodType(
            name: "Angry",
            emotionList: [
                EmotionType(
                    name: "Let Down",
                    feelingList: [
                        FeelingType(name: "Betrayed", parent: "Let Down"),
                        FeelingType(name: "Resentful", parent: "Let Down")]),
                EmotionType(
                    name: "Humiliated",
                    feelingList: [
                        FeelingType(name: "Disrespected", parent: "Humiliated"),
                        FeelingType(name: "Ridiculed", parent: "Humiliated")]),
                EmotionType(
                    name: "Bitter",
                    feelingList: [
                        FeelingType(name: "Indignant", parent: "Bitter"),
                        FeelingType(name: "Violated", parent: "Bitter")]),
                EmotionType(
                    name: "Mad",
                    feelingList: [
                        FeelingType(name: "Furious", parent: "Mad"),
                        FeelingType(name: "Jealous", parent: "Mad")]),
                EmotionType(
                    name: "Aggressive",
                    feelingList: [
                        FeelingType(name: "Provoked", parent: "Aggressive"),
                        FeelingType(name: "Hostile", parent: "Aggressive")]),
                EmotionType(
                    name: "Frustrated",
                    feelingList: [
                        FeelingType(name: "Infuriated", parent: "Frustrated"),
                        FeelingType(name: "Annoyed", parent: "Frustrated")]),
                EmotionType(
                    name: "Distant",
                    feelingList: [
                        FeelingType(name: "Withdrawn", parent: "Distant"),
                        FeelingType(name: "Numb", parent: "Distant")]),
                EmotionType(
                    name: "Critical",
                    feelingList: [
                        FeelingType(name: "Skeptical", parent: "Critical"),
                        FeelingType(name: "Dismissive", parent: "Critical")]),
            ]),
        MoodType(
            name: "Fearful",
            emotionList: [
                EmotionType(
                    name: "Scared",
                    feelingList: [
                        FeelingType(name: "Helpless", parent: "Scared"),
                        FeelingType(name: "Frightened", parent: "Scared")]),
                EmotionType(
                    name: "Anxious",
                    feelingList: [
                        FeelingType(name: "Overwhelmed", parent: "Anxious"),
                        FeelingType(name: "Worried", parent: "Anxious")]),
                EmotionType(
                    name: "Insecure",
                    feelingList: [
                        FeelingType(name: "Inadequate", parent: "Insecure"),
                        FeelingType(name: "Inferior", parent: "Insecure")]),
                EmotionType(
                    name: "Weak",
                    feelingList: [
                        FeelingType(name: "Worthless", parent: "Weak"),
                        FeelingType(name: "Insignificant", parent: "Weak")]),
                EmotionType(
                    name: "Rejected",
                    feelingList: [
                        FeelingType(name: "Excluded", parent: "Rejected"),
                        FeelingType(name: "Persecuted", parent: "Rejected")]),
                EmotionType(
                    name: "Threatened",
                    feelingList: [
                        FeelingType(name: "Nervous", parent: "Threatened"),
                        FeelingType(name: "Exposed", parent: "Threatened")])
            ]
        ),
        MoodType(
            name: "Bad",
            emotionList: [
                EmotionType(
                    name: "Bored",
                    feelingList: [
                        FeelingType(name: "Indifferent", parent: "Bored"),
                        FeelingType(name: "Apathetic", parent: "Bored")]),
                EmotionType(
                    name: "Busy",
                    feelingList: [
                        FeelingType(name: "Pressured", parent: "Busy"),
                        FeelingType(name: "Rushed", parent: "Busy")]),
                EmotionType(
                    name: "Stressed",
                    feelingList: [
                        FeelingType(name: "Overwhelmed", parent: "Stressed"),
                        FeelingType(name: "Out of Control", parent: "Stressed")]),
                EmotionType(
                    name: "Tired",
                    feelingList: [
                        FeelingType(name: "Sleepy", parent: "Tired"),
                        FeelingType(name: "Unfocused", parent: "Tired")])
            ]
        ),
        MoodType(
            name: "Surprised",
            emotionList: [
                EmotionType(
                    name: "Startled",
                    feelingList: [
                        FeelingType(name: "Shocked", parent: "Startled"),
                        FeelingType(name: "Dismayed", parent: "Startled")]),
                EmotionType(
                    name: "Confused",
                    feelingList: [
                        FeelingType(name: "Disillusioned", parent: "Confused"),
                        FeelingType(name: "Perplexed", parent: "Confused")]),
                EmotionType(
                    name: "Amazed",
                    feelingList: [
                        FeelingType(name: "Astonished", parent: "Amazed"),
                        FeelingType(name: "Awe", parent: "Amazed")]),
                EmotionType(
                    name: "Excited",
                    feelingList: [
                        FeelingType(name: "Eager", parent: "Excited"),
                        FeelingType(name: "Energetic", parent: "Excited")])
            ]
        )
    ]
}
