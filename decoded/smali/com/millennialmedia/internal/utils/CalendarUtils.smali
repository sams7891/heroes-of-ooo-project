.class public Lcom/millennialmedia/internal/utils/CalendarUtils;
.super Ljava/lang/Object;
.source "CalendarUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/utils/CalendarUtils$CalendarListener;
    }
.end annotation


# static fields
.field private static final DaysInWeekArray:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final calendarEventDateFormats:[Ljava/lang/String;

.field private static final rruleUntilDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    const-class v0, Lcom/millennialmedia/internal/utils/CalendarUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/utils/CalendarUtils;->TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/internal/utils/CalendarUtils;->rruleUntilDateFormat:Ljava/text/SimpleDateFormat;

    .line 40
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SU"

    aput-object v1, v0, v3

    const-string v1, "MO"

    aput-object v1, v0, v4

    const-string v1, "TU"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "WE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "TH"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "FR"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SA"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SU"

    aput-object v2, v0, v1

    sput-object v0, Lcom/millennialmedia/internal/utils/CalendarUtils;->DaysInWeekArray:[Ljava/lang/String;

    .line 42
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "yyyy-MM-dd\'T\'HH:mmZZZ"

    aput-object v1, v0, v3

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZZZ"

    aput-object v1, v0, v4

    sput-object v0, Lcom/millennialmedia/internal/utils/CalendarUtils;->calendarEventDateFormats:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static addEvent(Landroid/content/Context;Lorg/json/JSONObject;Lcom/millennialmedia/internal/utils/CalendarUtils$CalendarListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parameters"    # Lorg/json/JSONObject;
    .param p2, "calendarListener"    # Lcom/millennialmedia/internal/utils/CalendarUtils$CalendarListener;

    .prologue
    .line 55
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasCalendarPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {p0, p1, p2}, Lcom/millennialmedia/internal/utils/CalendarUtils;->addEventWithAPI(Landroid/content/Context;Lorg/json/JSONObject;Lcom/millennialmedia/internal/utils/CalendarUtils$CalendarListener;)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/millennialmedia/internal/utils/CalendarUtils;->addEventWithIntent(Landroid/content/Context;Lorg/json/JSONObject;Lcom/millennialmedia/internal/utils/CalendarUtils$CalendarListener;)V

    goto :goto_0
.end method

.method public static addEventWithAPI(Landroid/content/Context;Lorg/json/JSONObject;Lcom/millennialmedia/internal/utils/CalendarUtils$CalendarListener;)V
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parameters"    # Lorg/json/JSONObject;
    .param p2, "calendarListener"    # Lcom/millennialmedia/internal/utils/CalendarUtils$CalendarListener;

    .prologue
    .line 128
    if-nez p2, :cond_0

    .line 129
    sget-object v22, Lcom/millennialmedia/internal/utils/CalendarUtils;->TAG:Ljava/lang/String;

    const-string v23, "CalendarListener is required"

    invoke-static/range {v22 .. v23}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasCalendarPermission()Z

    move-result v22

    if-nez v22, :cond_1

    .line 135
    const-string v22, "Application does not have permission to update calendar"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/utils/CalendarUtils$CalendarListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_1
    const-wide/16 v6, 0x1

    .line 143
    .local v6, "calendarId":J
    const-string v22, "description"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 144
    .local v19, "title":Ljava/lang/String;
    const-string v22, "start"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/millennialmedia/internal/utils/CalendarUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v18

    .line 145
    .local v18, "start":Ljava/util/Date;
    const-string v22, "end"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/millennialmedia/internal/utils/CalendarUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    .line 146
    .local v10, "end":Ljava/util/Date;
    const-string v22, "location"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 147
    .local v13, "location":Ljava/lang/String;
    const-string v22, "recurrence"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/millennialmedia/internal/utils/CalendarUtils;->getRecurrenceRule(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v14

    .line 148
    .local v14, "recurrenceRule":Ljava/lang/String;
    const-string v22, "summary"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 149
    .local v8, "description":Ljava/lang/String;
    const-string v22, "transparency"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/millennialmedia/internal/utils/CalendarUtils;->getTransparency(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    .line 151
    .local v20, "transparency":Ljava/lang/Integer;
    const-string v22, "url"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 152
    .local v21, "url":Ljava/lang/String;
    if-eqz v21, :cond_2

    .line 153
    if-nez v8, :cond_4

    .line 154
    move-object/from16 v8, v21

    .line 161
    :cond_2
    :goto_1
    if-eqz v19, :cond_3

    if-nez v18, :cond_5

    .line 162
    :cond_3
    const-string v22, "Description and start are required"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/utils/CalendarUtils$CalendarListener;->onError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 156
    :cond_4
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "line.separator"

    invoke-static/range {v23 .. v23}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 168
    :cond_5
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 169
    .local v5, "contentResolver":Landroid/content/ContentResolver;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 173
    .local v4, "calEvent":Landroid/content/ContentValues;
    const-string v22, "calendar_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 174
    const-string v22, "eventTimezone"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v22, "title"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v22, "dtstart"

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 178
    if-eqz v10, :cond_6

    .line 179
    const-string v22, "dtend"

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 181
    :cond_6
    if-eqz v13, :cond_7

    .line 182
    const-string v22, "eventLocation"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_7
    if-eqz v14, :cond_8

    .line 185
    const-string v22, "rrule"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_8
    if-eqz v8, :cond_9

    .line 188
    const-string v22, "description"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_9
    if-eqz v20, :cond_a

    .line 191
    const-string v22, "availability"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 194
    :cond_a
    sget-object v22, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v22

    invoke-virtual {v5, v0, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    .line 195
    .local v12, "eventUri":Landroid/net/Uri;
    if-nez v12, :cond_b

    .line 196
    const-string v22, "Unable to add calendar event"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/utils/CalendarUtils$CalendarListener;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 221
    .end local v4    # "calEvent":Landroid/content/ContentValues;
    .end local v5    # "contentResolver":Landroid/content/ContentResolver;
    .end local v12    # "eventUri":Landroid/net/Uri;
    :catch_0
    move-exception v9

    .line 222
    .local v9, "e":Ljava/lang/Exception;
    sget-object v22, Lcom/millennialmedia/internal/utils/CalendarUtils;->TAG:Ljava/lang/String;

    const-string v23, "Exception adding calendar event: "

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    const-string v22, "Error occurred adding calendar event"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/utils/CalendarUtils$CalendarListener;->onError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 201
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v4    # "calEvent":Landroid/content/ContentValues;
    .restart local v5    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v12    # "eventUri":Landroid/net/Uri;
    :cond_b
    :try_start_1
    invoke-virtual {v12}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    .line 203
    .local v11, "eventId":Ljava/lang/Long;
    const-string v22, "reminder"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/millennialmedia/internal/utils/CalendarUtils;->getReminderTimeInMinutes(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v15

    .line 204
    .local v15, "reminder":Ljava/lang/Long;
    if-eqz v15, :cond_c

    .line 205
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 206
    .local v17, "reminders":Landroid/content/ContentValues;
    const-string v22, "event_id"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 207
    const-string v22, "method"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 208
    const-string v22, "minutes"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 210
    sget-object v22, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    .line 211
    .local v16, "reminderUri":Landroid/net/Uri;
    if-nez v16, :cond_c

    .line 212
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v5, v12, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 213
    const-string v22, "Unable to add reminder to calendar event"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/utils/CalendarUtils$CalendarListener;->onError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    .end local v16    # "reminderUri":Landroid/net/Uri;
    .end local v17    # "reminders":Landroid/content/ContentValues;
    :cond_c
    invoke-interface/range {p2 .. p2}, Lcom/millennialmedia/internal/utils/CalendarUtils$CalendarListener;->onSuccess()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static addEventWithIntent(Landroid/content/Context;Lorg/json/JSONObject;Lcom/millennialmedia/internal/utils/CalendarUtils$CalendarListener;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parameters"    # Lorg/json/JSONObject;
    .param p2, "calendarListener"    # Lcom/millennialmedia/internal/utils/CalendarUtils$CalendarListener;

    .prologue
    const/4 v10, 0x0

    .line 66
    if-nez p2, :cond_0

    .line 67
    sget-object v9, Lcom/millennialmedia/internal/utils/CalendarUtils;->TAG:Ljava/lang/String;

    const-string v10, "CalendarListener is required"

    invoke-static {v9, v10}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_0
    return-void

    .line 73
    :cond_0
    const-string v9, "description"

    invoke-virtual {p1, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 74
    .local v7, "title":Ljava/lang/String;
    const-string v9, "summary"

    invoke-virtual {p1, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "description":Ljava/lang/String;
    const-string v9, "location"

    invoke-virtual {p1, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "location":Ljava/lang/String;
    const-string v9, "recurrence"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v9}, Lcom/millennialmedia/internal/utils/CalendarUtils;->getRecurrenceRule(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "recurrenceRule":Ljava/lang/String;
    const-string v9, "start"

    invoke-virtual {p1, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/millennialmedia/internal/utils/CalendarUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 78
    .local v6, "start":Ljava/util/Date;
    const-string v9, "end"

    invoke-virtual {p1, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/millennialmedia/internal/utils/CalendarUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 79
    .local v2, "end":Ljava/util/Date;
    const-string v9, "transparency"

    invoke-virtual {p1, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/millennialmedia/internal/utils/CalendarUtils;->getTransparency(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 81
    .local v8, "transparency":Ljava/lang/Integer;
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 82
    sget-object v9, Lcom/millennialmedia/internal/utils/CalendarUtils;->TAG:Ljava/lang/String;

    const-string v10, "Creating calendar event: title: %s, location: %s, start: %s, end: %s, description: %s, rrule: %s, transparency: %s"

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    const/4 v12, 0x1

    aput-object v4, v11, v12

    const/4 v12, 0x2

    aput-object v6, v11, v12

    const/4 v12, 0x3

    aput-object v2, v11, v12

    const/4 v12, 0x4

    aput-object v0, v11, v12

    const/4 v12, 0x5

    aput-object v5, v11, v12

    const/4 v12, 0x6

    aput-object v8, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_1
    if-eqz v7, :cond_2

    if-nez v6, :cond_3

    .line 89
    :cond_2
    const-string v9, "Description and start are required"

    invoke-interface {p2, v9}, Lcom/millennialmedia/internal/utils/CalendarUtils$CalendarListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_3
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.INSERT"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v10, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    .line 97
    .local v3, "intent":Landroid/content/Intent;
    const-string v9, "title"

    invoke-virtual {v3, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v9, "beginTime"

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v3, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 99
    if-eqz v2, :cond_4

    .line 100
    const-string v9, "endTime"

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v3, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 102
    :cond_4
    if-eqz v0, :cond_5

    .line 103
    const-string v9, "description"

    invoke-virtual {v3, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    :cond_5
    if-eqz v4, :cond_6

    .line 106
    const-string v9, "eventLocation"

    invoke-virtual {v3, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    :cond_6
    if-eqz v5, :cond_7

    .line 109
    const-string v9, "rrule"

    invoke-virtual {v3, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    :cond_7
    if-eqz v8, :cond_8

    .line 112
    const-string v9, "availability"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 116
    :cond_8
    :try_start_0
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 117
    invoke-interface {p2}, Lcom/millennialmedia/internal/utils/CalendarUtils$CalendarListener;->onUIDisplayed()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v9, "No calendar application installed"

    invoke-interface {p2, v9}, Lcom/millennialmedia/internal/utils/CalendarUtils$CalendarListener;->onError(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static convertDaysToRRuleDays(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "intList"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v2, "rruleDays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 301
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lorg/json/JSONArray;->optInt(II)I

    move-result v0

    .line 302
    .local v0, "day":I
    if-ltz v0, :cond_0

    sget-object v3, Lcom/millennialmedia/internal/utils/CalendarUtils;->DaysInWeekArray:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 303
    sget-object v3, Lcom/millennialmedia/internal/utils/CalendarUtils;->DaysInWeekArray:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 305
    :cond_0
    sget-object v3, Lcom/millennialmedia/internal/utils/CalendarUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid index for day of week <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 309
    .end local v0    # "day":I
    :cond_1
    return-object v2
.end method

.method public static getRecurrenceRule(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 15
    .param p0, "recurrence"    # Lorg/json/JSONObject;

    .prologue
    const/4 v11, 0x0

    .line 230
    if-nez p0, :cond_0

    .line 276
    :goto_0
    return-object v11

    .line 234
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .local v9, "rrule":Ljava/lang/StringBuilder;
    const-string v12, "frequency"

    invoke-virtual {p0, v12, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 237
    .local v7, "frequency":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 238
    sget-object v12, Lcom/millennialmedia/internal/utils/CalendarUtils;->TAG:Ljava/lang/String;

    const-string v13, "frequency is required for recurrence rule"

    invoke-static {v12, v13}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_1
    const-string v12, "FREQ="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string v12, "expires"

    invoke-virtual {p0, v12, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/millennialmedia/internal/utils/CalendarUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 245
    .local v6, "expires":Ljava/util/Date;
    if-eqz v6, :cond_2

    .line 246
    sget-object v12, Lcom/millennialmedia/internal/utils/CalendarUtils;->rruleUntilDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v12, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 247
    .local v10, "until":Ljava/lang/String;
    const-string v12, "UNTIL="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .end local v10    # "until":Ljava/lang/String;
    :cond_2
    const-string v12, "daysInWeek"

    invoke-virtual {p0, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 251
    .local v4, "daysInWeek":Lorg/json/JSONArray;
    if-eqz v4, :cond_3

    .line 252
    invoke-static {v4}, Lcom/millennialmedia/internal/utils/CalendarUtils;->convertDaysToRRuleDays(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 253
    .local v0, "byDay":Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_3

    .line 254
    const-string v12, "BYDAY="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-static {v13, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .end local v0    # "byDay":Ljava/util/ArrayList;
    :cond_3
    const-string v12, "daysInMonth"

    invoke-virtual {p0, v12, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "daysInMonth":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 260
    const-string v12, "\\["

    const-string v13, ""

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "\\]"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "byMonthDay":Ljava/lang/String;
    const-string v12, "BYMONTHDAY="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .end local v2    # "byMonthDay":Ljava/lang/String;
    :cond_4
    const-string v12, "monthsInYear"

    invoke-virtual {p0, v12, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 266
    .local v8, "monthsInYear":Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 267
    const-string v12, "\\["

    const-string v13, ""

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "\\]"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "byMonth":Ljava/lang/String;
    const-string v12, "BYMONTH="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .end local v1    # "byMonth":Ljava/lang/String;
    :cond_5
    const-string v12, "daysInYear"

    invoke-virtual {p0, v12, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, "daysInYear":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 273
    const-string v11, "BYYEARDAY="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0
.end method

.method public static getReminderTimeInMinutes(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/Long;
    .locals 10
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # Ljava/util/Date;

    .prologue
    const/4 v4, 0x0

    .line 315
    const-wide/16 v2, -0x1

    .line 317
    .local v2, "milliseconds":J
    if-nez p0, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-object v4

    .line 321
    :cond_1
    const-string v5, "-"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 323
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    const-wide/16 v8, -0x1

    mul-long v2, v6, v8

    .line 335
    :cond_2
    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-ltz v5, :cond_0

    .line 336
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v5, Lcom/millennialmedia/internal/utils/CalendarUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to convert reminder time to minutes <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 329
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    invoke-static {p0}, Lcom/millennialmedia/internal/utils/CalendarUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 330
    .local v1, "reminderDate":Ljava/util/Date;
    if-eqz v1, :cond_2

    .line 331
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v2, v6, v8

    goto :goto_1
.end method

.method public static getTransparency(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 345
    const/4 v0, 0x0

    .line 347
    .local v0, "result":Ljava/lang/Integer;
    const-string v1, "transparent"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 348
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 353
    :cond_0
    :goto_0
    return-object v0

    .line 349
    :cond_1
    const-string v1, "opaque"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 282
    if-nez p0, :cond_0

    .line 283
    const/4 v0, 0x0

    .line 293
    :goto_0
    return-object v0

    .line 286
    :cond_0
    const/4 v0, 0x0

    .line 288
    .local v0, "date":Ljava/util/Date;
    :try_start_0
    sget-object v2, Lcom/millennialmedia/internal/utils/CalendarUtils;->calendarEventDateFormats:[Ljava/lang/String;

    invoke-static {p0, v2}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 289
    :catch_0
    move-exception v1

    .line 290
    .local v1, "e":Lorg/apache/http/impl/cookie/DateParseException;
    sget-object v2, Lcom/millennialmedia/internal/utils/CalendarUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing calendar event date <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
