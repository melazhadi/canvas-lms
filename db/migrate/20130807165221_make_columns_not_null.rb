#
# Copyright (C) 2013 - present Instructure, Inc.
#
# This file is part of Canvas.
#
# Canvas is free software: you can redistribute it and/or modify it under
# the terms of the GNU Affero General Public License as published by the Free
# Software Foundation, version 3 of the License.
#
# Canvas is distributed in the hope that it will be useful, but WITHOUT ANY
# WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
# A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
# details.
#
# You should have received a copy of the GNU Affero General Public License along
# with this program. If not, see <http://www.gnu.org/licenses/>.

class MakeColumnsNotNull < ActiveRecord::Migration[4.2]
  disable_ddl_transaction!
  tag :postdeploy

  def self.up
    change_column_null :abstract_courses, :workflow_state, false
    change_column_null :abstract_courses, :account_id, false
    change_column_null :abstract_courses, :root_account_id, false
    AbstractCourse.where(enrollment_term_id: nil).find_each do |ac|
      AbstractCourse.where(id: ac).update_all(enrollment_term_id: ac.root_account.default_enrollment_term.id)
    end
    change_column_null :abstract_courses, :enrollment_term_id, false
    change_column_null :account_authorization_configs, :account_id, false
    change_column_null :account_notifications, :start_at, false
    change_column_null :account_notifications, :end_at, false
    change_column_null :account_notifications, :account_id, false
    change_column_null :account_users, :account_id, false
    change_column_null :account_users, :user_id, false
    change_column_null :account_users, :membership_type, false
    change_column_null :account_reports, :account_id, false
    change_column_null :account_reports, :user_id, false
    change_column_null :account_reports, :workflow_state, false
    change_column_null :accounts, :workflow_state, false
    change_column_null :alerts, :context_id, false
    change_column_null :alerts, :context_type, false
    change_column_null :alerts, :recipients, false
    change_column_null :appointment_groups, :workflow_state, false
    change_column_null :assessment_question_bank_users, :workflow_state, false
    change_column_null :assessment_question_bank_users, :user_id, false
    change_column_null :assessment_question_bank_users, :assessment_question_bank_id, false
    change_column_null :assessment_question_banks, :workflow_state, false
    change_column_null :assessment_requests, :workflow_state, false
    change_column_null :assessment_requests, :user_id, false
    change_column_null :assessment_requests, :asset_id, false
    change_column_null :assessment_requests, :asset_type, false
    change_column_null :assessment_requests, :assessor_asset_id, false
    change_column_null :assessment_requests, :assessor_asset_type, false
    change_column_null :assessment_requests, :assessor_id, false
    change_column_null :assignments, :context_type, false
    change_column_null :assignments, :context_id, false
    change_column_null :assignments, :workflow_state, false
    change_column_null :assignment_groups, :context_id, false
    change_column_null :assignment_groups, :context_type, false
    change_column_null :assignment_groups, :workflow_state, false
    change_column_null :assignment_overrides, :title, false
    change_column_null :calendar_events, :context_id, false
    change_column_null :calendar_events, :context_type, false
    change_column_null :calendar_events, :workflow_state, false
    change_column_null :collaborations, :title, false
    change_column_null :collaborations, :workflow_state, false
    change_column_null :collections, :workflow_state, false
    change_column_null :collections, :context_id, false
    change_column_null :collections, :context_type, false
    change_column_null :collection_items, :collection_id, false
    change_column_null :collection_items, :collection_item_data_id, false
    change_column_null :collection_items, :user_id, false
    change_column_null :collection_items, :workflow_state, false
    change_column_null :collection_item_datas, :link_url, false
    change_column_null :collection_item_upvotes, :collection_item_data_id, false
    change_column_null :collection_item_upvotes, :user_id, false
    change_column_null :communication_channels, :path, false
    change_column_null :communication_channels, :path_type, false
    change_column_null :communication_channels, :user_id, false
    change_column_null :communication_channels, :workflow_state, false
    change_column_null :content_exports, :workflow_state, false
    change_column_null :content_exports, :course_id, false
    change_column_null :content_migrations, :workflow_state, false
    change_column_null :content_migrations, :context_id, false
    change_column_null :content_participations, :workflow_state, false
    change_column_null :content_participations, :content_id, false
    change_column_null :content_participations, :content_type, false
    change_column_null :content_participations, :user_id, false
    change_column_null :content_tags, :context_type, false
    change_column_null :content_tags, :context_id, false
    change_column_null :content_tags, :workflow_state, false
    change_column_null :context_external_tools, :name, false
    change_column_null :context_external_tools, :consumer_key, false
    change_column_null :context_external_tools, :shared_secret, false
    change_column_null :context_external_tools, :workflow_state, false
    change_column_null :context_module_progressions, :workflow_state, false
    change_column_null :context_modules, :workflow_state, false
    change_column_null :context_modules, :context_id, false
    change_column_null :context_modules, :context_type, false
    change_column_null :conversation_batches, :workflow_state, false
    change_column_null :conversation_batches, :user_id, false
    ConversationBatch.where(root_conversation_message_id: nil).delete_all
    change_column_null :conversation_batches, :root_conversation_message_id, false
    change_column_null :conversation_participants, :workflow_state, false
    change_column_null :conversation_participants, :conversation_id, false
    change_column_null :conversation_participants, :user_id, false
    change_column_null :course_account_associations, :depth, false
    change_column_null :course_account_associations, :course_id, false
    change_column_null :course_account_associations, :account_id, false
    change_column_null :course_sections, :course_id, false
    change_column_null :course_sections, :root_account_id, false
    change_column_null :course_sections, :workflow_state, false
    change_column_null :courses, :workflow_state, false
    change_column_null :courses, :account_id, false
    change_column_null :courses, :root_account_id, false
    change_column_null :courses, :enrollment_term_id, false
    change_column_null :delayed_notifications, :workflow_state, false
    change_column_null :delayed_notifications, :notification_id, false
    change_column_null :delayed_notifications, :asset_id, false
    change_column_null :delayed_notifications, :asset_type, false
    change_column_null :discussion_entry_participants, :workflow_state, false
    change_column_null :discussion_entry_participants, :user_id, false
    change_column_null :discussion_entry_participants, :discussion_entry_id, false
    change_column_null :discussion_topic_participants, :workflow_state, false
    change_column_null :discussion_topic_participants, :user_id, false
    change_column_null :discussion_topic_participants, :discussion_topic_id, false
    change_column_null :discussion_topic_participants, :unread_entry_count, false
    change_column_null :discussion_topics, :context_type, false
    change_column_null :discussion_topics, :context_id, false
    change_column_null :discussion_topics, :workflow_state, false
    change_column_null :enrollment_terms, :root_account_id, false
    change_column_null :enrollment_terms, :workflow_state, false
    change_column_null :enrollments, :user_id, false
    change_column_null :enrollments, :course_id, false
    change_column_null :enrollments, :type, false
    change_column_null :enrollments, :root_account_id, false
    Enrollment.where(course_section_id: nil).find_each do |e|
      Enrollment.where(id: e).update_all(course_section_id: e.course.default_section.id)
    end
    change_column_null :enrollments, :course_section_id, false
    change_column_null :enrollments, :workflow_state, false
    change_column_null :eportfolios, :user_id, false
    change_column_null :eportfolios, :workflow_state, false
    change_column_null :eportfolio_categories, :eportfolio_id, false
    change_column_null :eportfolio_entries, :eportfolio_id, false
    change_column_null :eportfolio_entries, :eportfolio_category_id, false
    change_column_null :external_feed_entries, :workflow_state, false
    change_column_null :external_feed_entries, :external_feed_id, false
    change_column_null :external_feeds, :url, false
    change_column_null :external_feeds, :context_id, false
    change_column_null :external_feeds, :context_type, false
    change_column_null :folders, :context_type, false
    change_column_null :folders, :context_id, false
    change_column_null :folders, :workflow_state, false
    change_column_null :grading_standards, :workflow_state, false
    change_column_null :grading_standards, :context_id, false
    change_column_null :grading_standards, :context_type, false
    change_column_null :group_memberships, :group_id, false
    change_column_null :group_memberships, :user_id, false
    change_column_null :group_memberships, :workflow_state, false
    change_column_null :groups, :context_id, false
    change_column_null :groups, :context_type, false
    change_column_null :groups, :account_id, false
    change_column_null :groups, :root_account_id, false
    change_column_null :groups, :workflow_state, false
    LearningOutcome.where(short_description: nil).update_all(short_description: '')
    change_column_null :learning_outcomes, :short_description, false
    change_column_null :learning_outcomes, :workflow_state, false
    LearningOutcomeGroup.where(title: nil).update_all(title: '')
    change_column_null :learning_outcome_groups, :title, false
    change_column_null :learning_outcome_groups, :workflow_state, false
    change_column_null :media_objects, :workflow_state, false
    change_column_null :media_objects, :media_id, false
    change_column_null :media_tracks, :media_object_id, false
    change_column_null :media_tracks, :content, false
    change_column_null :migration_issues, :workflow_state, false
    change_column_null :migration_issues, :content_migration_id, false
    change_column_null :migration_issues, :issue_type, false
    change_column_null :notification_policies, :communication_channel_id, false
    change_column_null :notification_policies, :broadcast, false
    change_column_null :notifications, :workflow_state, false
    change_column_null :page_views, :user_id, false
    change_column_null :profiles, :root_account_id, false
    change_column_null :profiles, :context_id, false
    change_column_null :profiles, :context_type, false
    change_column_null :progresses, :context_id, false
    change_column_null :progresses, :context_type, false
    change_column_null :progresses, :workflow_state, false
    change_column_null :pseudonyms, :workflow_state, false
    change_column_null :pseudonyms, :account_id, false
    Pseudonym.where(user_id: nil).delete_all
    change_column_null :pseudonyms, :user_id, false
    change_column_null :quizzes, :context_id, false
    change_column_null :quizzes, :context_type, false
    change_column_null :quizzes, :workflow_state, false
    change_column_null :quiz_groups, :quiz_id, false
    change_column_null :quiz_submissions, :workflow_state, false
    change_column_null :quiz_submissions, :quiz_id, false
    change_column_null :roles, :workflow_state, false
    change_column_null :rubric_assessments, :assessment_type, false
    change_column_null :rubric_assessments, :rubric_id, false
    change_column_null :rubric_assessments, :artifact_id, false
    change_column_null :rubric_assessments, :artifact_type, false
    change_column_null :rubric_associations, :purpose, false
    change_column_null :rubric_associations, :rubric_id, false
    change_column_null :rubric_associations, :association_id, false
    change_column_null :rubric_associations, :association_type, false
    change_column_null :rubric_associations, :context_id, false
    change_column_null :rubric_associations, :context_type, false
    change_column_null :rubrics, :workflow_state, false
    change_column_null :rubrics, :context_id, false
    change_column_null :rubrics, :context_type, false
    change_column_null :session_persistence_tokens, :crypted_token, false
    change_column_null :session_persistence_tokens, :pseudonym_id, false
    change_column_null :session_persistence_tokens, :token_salt, false
    change_column_null :sis_batches, :workflow_state, false
    change_column_null :sis_batches, :account_id, false
    change_column_null :stream_items, :data, false
    change_column_null :stream_items, :asset_type, false
    change_column_null :stream_item_instances, :user_id, false
    change_column_null :stream_item_instances, :stream_item_id, false
    change_column_null :submissions, :assignment_id, false
    change_column_null :submissions, :user_id, false
    change_column_null :submissions, :workflow_state, false
    change_column_null :thumbnails, :size, false
    change_column_null :thumbnails, :content_type, false
    change_column_null :thumbnails, :filename, false
    change_column_null :user_account_associations, :user_id, false
    change_column_null :user_account_associations, :account_id, false
    change_column_null :user_follows, :following_user_id, false
    change_column_null :user_follows, :followed_item_id, false
    change_column_null :user_notes, :workflow_state, false
    change_column_null :user_services, :user_id, false
    change_column_null :user_services, :service, false
    UserService.where(service_user_id: nil).delete_all
    change_column_null :user_services, :service_user_id, false
    change_column_null :user_services, :workflow_state, false
    change_column_null :users, :workflow_state, false
    change_column_null :web_conferences, :conference_type, false
    change_column_null :web_conferences, :title, false
    change_column_null :web_conferences, :context_id, false
    change_column_null :web_conferences, :context_type, false
    change_column_null :web_conferences, :user_id, false
    change_column_null :wiki_pages, :workflow_state, false
    change_column_null :wiki_pages, :wiki_id, false
    change_column_null :zip_file_imports, :context_id, false
    change_column_null :zip_file_imports, :context_type, false
    change_column_null :zip_file_imports, :workflow_state, false
  end

  def self.down
    change_column_null :abstract_courses, :workflow_state, true
    change_column_null :abstract_courses, :account_id, true
    change_column_null :abstract_courses, :root_account_id, true
    change_column_null :abstract_courses, :enrollment_term_id, true
    change_column_null :account_authorization_configs, :account_id, true
    change_column_null :account_notifications, :start_at, true
    change_column_null :account_notifications, :end_at, true
    change_column_null :account_notifications, :account_id, true
    change_column_null :account_users, :account_id, true
    change_column_null :account_users, :user_id, true
    change_column_null :account_users, :membership_type, true
    change_column_null :account_reports, :account_id, true
    change_column_null :account_reports, :user_id, true
    change_column_null :account_reports, :workflow_state, true
    change_column_null :accounts, :workflow_state, true
    change_column_null :alerts, :context_id, true
    change_column_null :alerts, :context_type, true
    change_column_null :alerts, :recipients, true
    change_column_null :appointment_groups, :workflow_state, true
    change_column_null :assessment_question_bank_users, :workflow_state, true
    change_column_null :assessment_question_bank_users, :user_id, true
    change_column_null :assessment_question_bank_users, :assessment_question_bank_id, true
    change_column_null :assessment_question_banks, :workflow_state, true
    change_column_null :assessment_requests, :workflow_state, true
    change_column_null :assessment_requests, :user_id, true
    change_column_null :assessment_requests, :asset_id, true
    change_column_null :assessment_requests, :asset_type, true
    change_column_null :assessment_requests, :assessor_asset_id, true
    change_column_null :assessment_requests, :assessor_asset_type, true
    change_column_null :assessment_requests, :assessor_id, true
    change_column_null :assignments, :context_type, true
    change_column_null :assignments, :context_id, true
    change_column_null :assignments, :workflow_state, true
    change_column_null :assignment_groups, :context_id, true
    change_column_null :assignment_groups, :context_type, true
    change_column_null :assignment_groups, :workflow_state, true
    change_column_null :assignment_overrides, :title, true
    change_column_null :calendar_events, :context_id, true
    change_column_null :calendar_events, :context_type, true
    change_column_null :calendar_events, :workflow_state, true
    change_column_null :collaborations, :title, true
    change_column_null :collaborations, :workflow_state, true
    change_column_null :collections, :workflow_state, true
    change_column_null :collections, :context_id, true
    change_column_null :collections, :context_type, true
    change_column_null :collection_items, :collection_id, true
    change_column_null :collection_items, :collection_item_data_id, true
    change_column_null :collection_items, :user_id, true
    change_column_null :collection_items, :workflow_state, true
    change_column_null :collection_item_datas, :link_url, true
    change_column_null :collection_item_upvotes, :collection_item_data_id, true
    change_column_null :collection_item_upvotes, :user_id, true
    change_column_null :communication_channels, :path, true
    change_column_null :communication_channels, :path_type, true
    change_column_null :communication_channels, :user_id, true
    change_column_null :communication_channels, :workflow_state, true
    change_column_null :content_exports, :workflow_state, true
    change_column_null :content_exports, :course_id, true
    change_column_null :content_migrations, :workflow_state, true
    change_column_null :content_migrations, :context_id, true
    change_column_null :content_participations, :workflow_state, true
    change_column_null :content_participations, :content_id, true
    change_column_null :content_participations, :content_type, true
    change_column_null :content_participations, :user_id, true
    change_column_null :content_tags, :context_type, true
    change_column_null :content_tags, :context_id, true
    change_column_null :content_tags, :workflow_state, true
    change_column_null :context_external_tools, :name, true
    change_column_null :context_external_tools, :consumer_key, true
    change_column_null :context_external_tools, :shared_secret, true
    change_column_null :context_external_tools, :workflow_state, true
    change_column_null :context_module_progressions, :workflow_state, true
    change_column_null :context_modules, :workflow_state, true
    change_column_null :context_modules, :context_id, true
    change_column_null :context_modules, :context_type, true
    change_column_null :conversation_batches, :workflow_state, true
    change_column_null :conversation_batches, :user_id, true
    change_column_null :conversation_batches, :root_conversation_message_id, true
    change_column_null :conversation_participants, :workflow_state, true
    change_column_null :conversation_participants, :conversation_id, true
    change_column_null :conversation_participants, :user_id, true
    change_column_null :course_account_associations, :depth, true
    change_column_null :course_account_associations, :course_id, true
    change_column_null :course_account_associations, :account_id, true
    change_column_null :course_sections, :course_id, true
    change_column_null :course_sections, :root_account_id, true
    change_column_null :course_sections, :workflow_state, true
    change_column_null :courses, :workflow_state, true
    change_column_null :courses, :account_id, true
    change_column_null :courses, :root_account_id, true
    change_column_null :courses, :enrollment_term_id, true
    change_column_null :delayed_notifications, :workflow_state, true
    change_column_null :delayed_notifications, :notification_id, true
    change_column_null :delayed_notifications, :asset_id, true
    change_column_null :delayed_notifications, :asset_type, true
    change_column_null :discussion_entry_participants, :workflow_state, true
    change_column_null :discussion_entry_participants, :user_id, true
    change_column_null :discussion_entry_participants, :discussion_entry_id, true
    change_column_null :discussion_topic_participants, :workflow_state, true
    change_column_null :discussion_topic_participants, :user_id, true
    change_column_null :discussion_topic_participants, :discussion_topic_id, true
    change_column_null :discussion_topic_participants, :unread_entry_count, true
    change_column_null :discussion_topics, :context_type, true
    change_column_null :discussion_topics, :context_id, true
    change_column_null :discussion_topics, :workflow_state, true
    change_column_null :enrollment_terms, :root_account_id, true
    change_column_null :enrollment_terms, :workflow_state, true
    change_column_null :enrollments, :user_id, true
    change_column_null :enrollments, :course_id, true
    change_column_null :enrollments, :type, true
    change_column_null :enrollments, :root_account_id, true
    change_column_null :enrollments, :course_section_id, true
    change_column_null :enrollments, :workflow_state, true
    change_column_null :eportfolios, :user_id, true
    change_column_null :eportfolios, :workflow_state, true
    change_column_null :eportfolio_categories, :eportfolio_id, true
    change_column_null :eportfolio_entries, :eportfolio_id, true
    change_column_null :eportfolio_entries, :eportfolio_category_id, true
    change_column_null :external_feed_entries, :workflow_state, true
    change_column_null :external_feed_entries, :external_feed_id, true
    change_column_null :external_feeds, :url, true
    change_column_null :external_feeds, :context_id, true
    change_column_null :external_feeds, :context_type, true
    change_column_null :folders, :context_type, true
    change_column_null :folders, :context_id, true
    change_column_null :folders, :workflow_state, true
    change_column_null :grading_standards, :workflow_state, true
    change_column_null :grading_standards, :context_id, true
    change_column_null :grading_standards, :context_type, true
    change_column_null :group_memberships, :group_id, true
    change_column_null :group_memberships, :user_id, true
    change_column_null :group_memberships, :workflow_state, true
    change_column_null :groups, :context_id, true
    change_column_null :groups, :context_type, true
    change_column_null :groups, :account_id, true
    change_column_null :groups, :root_account_id, true
    change_column_null :groups, :workflow_state, true
    change_column_null :learning_outcomes, :short_description, true
    change_column_null :learning_outcomes, :workflow_state, true
    change_column_null :learning_outcome_groups, :title, true
    change_column_null :learning_outcome_groups, :workflow_state, true
    change_column_null :media_objects, :workflow_state, true
    change_column_null :media_objects, :media_id, true
    change_column_null :media_tracks, :media_object_id, true
    change_column_null :media_tracks, :content, true
    change_column_null :migration_issues, :workflow_state, true
    change_column_null :migration_issues, :content_migration_id, true
    change_column_null :migration_issues, :issue_type, true
    change_column_null :notification_policies, :communication_channel_id, true
    change_column_null :notification_policies, :broadcast, true
    change_column_null :notifications, :workflow_state, true
    change_column_null :page_views, :user_id, true
    change_column_null :profiles, :root_account_id, true
    change_column_null :profiles, :context_id, true
    change_column_null :profiles, :context_type, true
    change_column_null :progresses, :context_id, true
    change_column_null :progresses, :context_type, true
    change_column_null :progresses, :workflow_state, true
    change_column_null :pseudonyms, :workflow_state, true
    change_column_null :pseudonyms, :account_id, true
    change_column_null :pseudonyms, :user_id, true
    change_column_null :quizzes, :context_id, true
    change_column_null :quizzes, :context_type, true
    change_column_null :quizzes, :workflow_state, true
    change_column_null :quiz_groups, :quiz_id, true
    change_column_null :quiz_submissions, :workflow_state, true
    change_column_null :quiz_submissions, :quiz_id, true
    change_column_null :roles, :workflow_state, true
    change_column_null :rubric_assessments, :assessment_type, true
    change_column_null :rubric_assessments, :rubric_id, true
    change_column_null :rubric_assessments, :rubric_association_id, true
    change_column_null :rubric_assessments, :artifact_id, true
    change_column_null :rubric_assessments, :artifact_type, true
    change_column_null :rubric_associations, :purpose, true
    change_column_null :rubric_associations, :rubric_id, true
    change_column_null :rubric_associations, :association_id, true
    change_column_null :rubric_associations, :association_type, true
    change_column_null :rubric_associations, :context_id, true
    change_column_null :rubric_associations, :context_type, true
    change_column_null :rubrics, :workflow_state, true
    change_column_null :rubrics, :context_id, true
    change_column_null :rubrics, :context_type, true
    change_column_null :session_persistence_tokens, :crypted_token, true
    change_column_null :session_persistence_tokens, :pseudonym_id, true
    change_column_null :session_persistence_tokens, :token_salt, true
    change_column_null :sis_batches, :workflow_state, true
    change_column_null :sis_batches, :account_id, true
    change_column_null :stream_items, :data, true
    change_column_null :stream_items, :asset_type, true
    change_column_null :stream_item_instances, :user_id, true
    change_column_null :stream_item_instances, :stream_item_id, true
    change_column_null :submissions, :assignment_id, true
    change_column_null :submissions, :user_id, true
    change_column_null :submissions, :workflow_state, true
    change_column_null :thumbnails, :size, true
    change_column_null :thumbnails, :content_type, true
    change_column_null :thumbnails, :filename, true
    change_column_null :user_account_associations, :user_id, true
    change_column_null :user_account_associations, :account_id, true
    change_column_null :user_follows, :following_user_id, true
    change_column_null :user_follows, :followed_item_id, true
    change_column_null :user_notes, :workflow_state, true
    change_column_null :user_services, :user_id, true
    change_column_null :user_services, :service, true
    change_column_null :user_services, :service_user_id, true
    change_column_null :user_services, :workflow_state, true
    change_column_null :users, :workflow_state, true
    change_column_null :web_conferences, :conference_type, true
    change_column_null :web_conferences, :title, true
    change_column_null :web_conferences, :context_id, true
    change_column_null :web_conferences, :context_type, true
    change_column_null :web_conferences, :user_id, true
    change_column_null :wiki_pages, :workflow_state, true
    change_column_null :wiki_pages, :wiki_id, true
    change_column_null :zip_file_imports, :context_id, true
    change_column_null :zip_file_imports, :context_type, true
    change_column_null :zip_file_imports, :workflow_state, true
  end
end