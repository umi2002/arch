require( "orgmode" ).setup_ts_grammar()
require( "orgmode" ).setup(
    {
        org_agenda_files = { "~/org/*" },
        org_default_notes_file = "~/org/umi.org",
        org_hide_leading_stars = true,
        org_hide_emphasis_markers = false,
        calendar_week_start_day = 0,
        org_agenda_start_on_weekday = 0,
        conceallevel = 3,
    }
 )
