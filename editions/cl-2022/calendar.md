---
title: Calendar
layout: default
---
# Calendar

The course runs from {{ site.data.lessons.first.date | date_to_string:
"ordinal", "US" }} till {{ site.data.lessons.last.date |
date_to_string: "ordinal", "US"}} with the following schedule:

-   Thursdays, 13:30-15:30
-   Fridays, 13:30-15:30

You might want to read the [Instructions](./instructions) to
understand how to take the course. (And the expression \"you might
want ...\" gets translated in Italian with: \"è assolutamente
necessario che ...\".)

## Lessons' Diary

This is the list of lessons delivered so far plus a tentative schedule
of lessons in the near future.

<table>
    <thead>
      <tr>
        <th>Date</th>
        <th>Topic</th>
        <th>Subtopic & Materials</th>
      </tr>      
    </thead>
    <tbody>
    {% for lesson in site.data.actual_calendar %}
    <tr>
    <td>
      <b>{{ lesson.date | date: "%a, %d %b %Y" }}</b>
      <br />
      {{ lesson.time }}
    </td>
    <td>{{ lesson.topic }}</td>
    <td>
        <ul class="no-bullets">
        {% for material in lesson.materials %}
        {% if material.slides != "" %}
          <li style="margin-bottom:0.7rem">
              <b>{{ material.topic }}:</b><br/> 
              {{ material.slides }}
          </li>
        {% endif %}
        {% endfor %}
        </ul>
    </td>
    </tr>
    {% endfor %}
    </tbody>
</table>

