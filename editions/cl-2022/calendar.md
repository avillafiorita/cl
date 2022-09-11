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

The following is the lesson plan.  Notice that titles and structure of
the lessons yet to be delivered might change.  When the lesson ends,
we add links with the corresponding set of slides.

<table>
    <thead>
      <tr>
        <th>Planned Date</th>
        <th>Planned Topic</th>
        <th>Materials</th>
      </tr>      
    </thead>
    <tbody>
    {% for lesson in site.data.lessons %}
    <tr>
    <td>
      {{ lesson.date | date_to_string: "ordinal", "US" }}<br />
      {{ lesson.time }}
    </td>
    <td>{{ lesson.topic }}</td>
    <td>
        <ul>
        {% for material in lesson.materials %}
        {% if material.slides != "" %}
          <li>{{ material.topic }}: {{ material.slides }}</li>
        {% endif %}
        {% endfor %}
        </ul>
    </td>
    </tr>
    {% endfor %}
    </tbody>
</table>
 
