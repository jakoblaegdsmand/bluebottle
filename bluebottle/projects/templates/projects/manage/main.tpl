{% load templatetag_handlebars %}
{% load i18n %}
{% load static %}

{% tplhandlebars "my_project" %}

    <div class="l-section" id="project-dashboard">

    	{{partial "my_project_top"}}

        <div class="l-section" id="manage-project">

            <div class="l-wrapper">

                <nav class="manage-project-sidebar">
                    <h4><span class="flaticon solid notebook-1"></span> {% trans "Project Story" %} </h4>
                    <ul class="manage-project-nav">
                        <li>
                            {{#link-to "myProject.basics"}}
                                <em {{bindAttr class="validBasics:is-finished:is-unfinished"}}></em>
                                {% trans "Basics" %}
                            {{/link-to}}
                        </li>
                        <li>
                            {{#link-to "myProject.description"}}
                                <em {{bindAttr class="validDescription:is-finished:is-unfinished"}}></em>
                                {% trans "Description" %}
                            {{/link-to}}
                        </li>
                        <li>
                            {{#link-to "myProject.details"}}
                                <em {{bindAttr class="validDetails:is-finished:is-unfinished"}}></em>
                                {% trans "Details" %}
                            {{/link-to}}
                        </li>
                        <li>
                            {{#link-to "myProject.location"}}
                                <em {{bindAttr class="validLocation:is-finished:is-unfinished"}}></em>
                                {% trans "Location" %}
                            {{/link-to}}
                        </li>
                        <li>
                            {{#link-to "myProject.media"}}
                                <em {{bindAttr class="validMedia:is-finished:is-unfinished"}}></em>
                                {% trans "Media" %}
                            {{/link-to}}
                        </li>
                    </ul>

                    <h4><span class="flaticon solid briefcase-1"></span> {% trans "Organisation" %}</h4>
                    <ul class="manage-project-nav">
                        <li>
                            {{#link-to "myProject.organisation"}}
                                <em {{bindAttr class="organization.validProfile:is-finished:is-unfinished"}}></em>
                                {% trans "Organisation Profile" %}
                            {{/link-to}}
                        </li>
                        <li>
                            {{#link-to "myProject.legal"}}
                                <em {{bindAttr class="organization.validLegalStatus:is-finished:is-unfinished"}}></em>
                                {% trans "Legal Status" %}
                            {{/link-to}}
                        </li>
                    </ul>


                    <h4><span class="flaticon solid wallet-1"></span> {% trans "Crowdfunding" %}</h4>
                    <ul class="manage-project-nav">
                        <li>
                            {{#link-to "myProject.campaign"}}
                                <em {{bindAttr class="validCampaign:is-finished:is-unfinished"}}></em>
                                {% trans "Start Campaign" %}
                            {{/link-to}}
                        </li>
                        <li>
                            {{#link-to "myProject.budget"}}
                                <em {{bindAttr class="validBudget:is-finished:is-unfinished"}}></em>
                                {% trans "Budget" %}
                            {{/link-to}}
                        </li>
                        {{#if organization}}
                        <li>
                            {{#link-to "myProject.bank"}}
                                <em {{bindAttr class="organization.validBank:is-finished:is-unfinished"}}></em>
                                {% trans "Bank details" %}
                            {{/link-to}}
                        </li>
                        {{/if}}
                    </ul>

                    {{#link-to "myProject.submit" class="btn btn-iconed btn-primary btn-submit"}}
                        <span class="flaticon solid right-2"></span>
                        {% trans "Submit Plan" %}
                    {{/link-to}}

                </nav>

                <form class="l-content">
                    {{ outlet }}
                </form>

            </div>
        </div>
    </div>
{% endtplhandlebars %}

