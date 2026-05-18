Classify each ticket as Bug or Feature Request, assign priority P1/P2/P3, and output the result as a markdown table with exactly these columns: Ticket | Type | Priority | Reason.

Do not include any prose outside the table.

Examples:

Input: "Search returns no results when query contains special characters"
Output:
| Ticket | Type | Priority | Reason |
|---|---|---|---|
| Search returns no results when query contains special characters | Bug | P2 | Existing functionality broken for a subset of inputs; users have a workaround (rephrase query). |

Input: "Add export to PDF"
Output:
| Ticket | Type | Priority | Reason |
|---|---|---|---|
| Add export to PDF | Feature Request | P3 | New capability; no user is blocked. |

Now classify the following tickets in the same format. Output one combined table for all rows.

Tickets:
- "App crashes when uploading files larger than 10MB"
- "Add dark mode to the dashboard"
- "Login button doesn't work on Safari 16"
- "Would be nice to export data as CSV"
- "Sometimes the app feels slow"
- "Notifications should be configurable per project"
