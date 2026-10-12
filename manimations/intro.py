from manim import *

class intro(Scene):
    def construct(self):
        # Background
        self.camera.background_color = "#E0F2FE"

        full_text = "LuminousCat"
        letter_objects = []

        # Create letters
        for index, char in enumerate(full_text):
            char_color = ORANGE if index % 2 == 0 else BLACK

            char_text = Text(
                char,
                font_size=72,
                color=char_color
            )

            letter_objects.append(char_text)

        # Arrange the word
        brand_name = VGroup(*letter_objects)
        brand_name.arrange(RIGHT, buff=0.08)
        brand_name.move_to(ORIGIN)

        # Hide all letters initially
        for letter in letter_objects:
            letter.set_opacity(0)

        # Reveal each letter with top-to-bottom column flashes
        for index, letter in enumerate(letter_objects):
            # Alternate flash colors: Black for "L", Orange for "u", etc.
            if index % 2 == 0:
                flash_color = BLACK
            else:
                flash_color = ORANGE

            # Rectangle covering from top to bottom of the screen
            flash = Rectangle(
                width=letter.width + 0.25,
                height=config.frame_height,  # Stretches from top to bottom
                fill_color=flash_color,
                fill_opacity=1,
                stroke_width=0
            )

            # Center horizontally on the letter, but keep vertically centered on screen
            flash.move_to([letter.get_center()[0], 0, 0])

            # Put flash in front
            self.add(flash)

            # Letter appears
            self.play(
                letter.animate.set_opacity(1),
                run_time=0.25
            )

            # Flash fades into the light-blue background
            self.play(
                flash.animate.set_fill(
                    color="#E0F2FE",
                    opacity=1
                ),
                run_time=0.4
            )

            self.remove(flash)

        self.wait(2)