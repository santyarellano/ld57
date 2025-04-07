is_showing_event = true;

window_color = make_color_rgb(250, 237, 200);
c_border_blue = make_color_rgb(50, 92, 230);

// start event
event = {
	title: "So, you have a dream...",
	text: "Want to be a game developer? Ha! Good luck! The market is tough right now, and no company will hire you. Better keep working at your soul-crushing job. Or will you try to juggle them both? Careful though, exhaustion will drive you to insanity, and no one wants to end up like that! Or will you leave your job aside and get deep in debt in hopes of making it? Debts can be pretty stressful! How well can you rest knowing there are bills to pay? \n\nYes, it is tough indeed...\nCan you manage to get $" + string(o_dashboard.win_score) + " in your bank account so you can escape to a low-cost island to make your games at peace?",
	sanity_mod: 0,
	wallet_mod: 5,
	income_mod: 1,
	expenses_mod: 10
};

// game finished event
game_finished_event = {
	title: "Released!",
	text: "You spent quite some time making your dream game and it is out now! Whether it makes money or not you don't care. YOU MADE A GAME!",
	sanity_mod: 0,
	wallet_mod: 0,
	income_mod: 0,
	expenses_mod: 0
};

random_events = [
	{
		title: "You had a baby!",
		text: "You brave soul! You decided to grow your family and while this is a great blessing, babies come with some responsibilities...",
		sanity_mod: -10,
		wallet_mod: -15,
		income_mod: 0,
		expenses_mod: 15
	},
	{
		title: "You are promoted!",
		text: "It might be that you are working hard, or just that your company wants to keep you with them, but you just got promoted. Congratulations!",
		sanity_mod: -1,
		wallet_mod: 5,
		income_mod: 3,
		expenses_mod: 0
	},
	{
		title: "You had to buy it...",
		text: "You saw a great deal on a pizza oven. Will you use it? who knows! But you just had to have it!",
		sanity_mod: 0,
		wallet_mod: -15,
		income_mod: 0,
		expenses_mod: 0
	},
	{
		title: "Ahoy Mateys!",
		text: "You've always wanted a boat and you just couldn't wait any longer. You bought a precious vessel using your credit card and didn't even look at your bank account. All aboard!",
		sanity_mod: 0,
		wallet_mod: -50,
		income_mod: 0,
		expenses_mod: 0
	},
	{
		title: "Happy Birthday!",
		text: "Another trip around the sun and you're still here! Your old man loves you so much that he sent you a gift card through a very sketchy mail company. Enjoy!",
		sanity_mod: 0,
		wallet_mod: 20,
		income_mod: 0,
		expenses_mod: 0
	},
	{
		title: "I can't miss out!",
		text: "Your dream boy band is coming to town and you NEEDED to go see them! You had a blast!",
		sanity_mod: 0,
		wallet_mod: -5,
		income_mod: 0,
		expenses_mod: 0
	},
	{
		title: "About time!",
		text: "And old friend finally decided to pay what you lent him 5 years ago. This will come in handy!",
		sanity_mod: 0,
		wallet_mod: 30,
		income_mod: 0,
		expenses_mod: 0
	},
	{
		title: "I'm too old for this!",
		text: "You went to your neighbor's party and came home at 4a.m. You're going to need some coffee to stay awake today!",
		sanity_mod: -15,
		wallet_mod: -5,
		income_mod: 0,
		expenses_mod: 0
	},
	{
		title: "You got a sponsor!",
		text: "A family friend saw your games and liked them so much that she gave you some money to finance your next game. Thank you so much!",
		sanity_mod: 0,
		wallet_mod: 30,
		income_mod: 0,
		expenses_mod: 0
	},
	{
		title: "Coffee!",
		text: "What a great way to start your day! Espresso Macchiato... Mi amore!",
		sanity_mod: 80,
		wallet_mod: 0,
		income_mod: 0,
		expenses_mod: 0
	},
	{
		title: "Salary adjustment!",
		text: "The economy is crazy right now. Inflation all around! Your company adjusts your salary in attempts to catch up!",
		sanity_mod: 0,
		wallet_mod: 0,
		income_mod: 1,
		expenses_mod: 0
	},
];