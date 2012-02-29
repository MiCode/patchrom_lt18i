.class public Lmiui/provider/CallLog$Calls;
.super Landroid/provider/CallLog$Calls;
.source "CallLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/CallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Calls"
.end annotation


# static fields
.field public static final CONTACT_ID:Ljava/lang/String; = "contactid"

.field public static final CONTENT_QUERY_URI:Landroid/net/Uri; = null

.field public static final FIREWALL_TYPE:Ljava/lang/String; = "firewalltype"

.field public static final INCOMING_FIREWALL_MASK:I = 0xff

.field public static final INCOMING_FORWARDING_CALL:I = 0x100

.field public static final INCOMING_FORWARDING_CALL_MASK:I = 0xff00

.field public static final INCOMING_MUTE_TYPE:I = 0x2

.field public static final INCOMING_NON_FORWARDING_CALL:I = 0x0

.field public static final INCOMING_NO_FIREWALL_TYPE:I = 0x0

.field public static final INCOMING_REJECTED_TYPE:I = 0x1

.field public static final NEWCONTACT_TYPE:I = 0x4

.field public static final NORMALIZED_NUMBER:Ljava/lang/String; = "normalized_number"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "content://call_log/calls_query"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/CallLog$Calls;->CONTENT_QUERY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/provider/CallLog$Calls;-><init>()V

    return-void
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJII)Landroid/net/Uri;
    .locals 4
    .parameter "ci"
    .parameter "context"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "start"
    .parameter "duration"
    .parameter "firewallType"

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 110
    .local v1, resolver:Landroid/content/ContentResolver;
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne p3, v0, :cond_4

    .line 111
    const-string p2, "-2"

    .line 112
    if-eqz p0, :cond_0

    const-string p3, ""

    .end local p3
    iput-object p3, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 122
    :cond_0
    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 p3, 0x5

    invoke-direct {v2, p3}, Landroid/content/ContentValues;-><init>(I)V

    .line 124
    .local v2, values:Landroid/content/ContentValues;
    move-object p3, p2

    .line 125
    .local p3, normalizedNumber:Ljava/lang/String;
    invoke-static {p3}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 126
    .local v0, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    if-eqz v0, :cond_1

    .line 127
    const/4 p3, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, p3, v3}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    .end local p3           #normalizedNumber:Ljava/lang/String;
    move-result-object p3

    .line 129
    .restart local p3       #normalizedNumber:Ljava/lang/String;
    :cond_1
    const-string v0, "number"

    .end local v0           #pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    invoke-virtual {v2, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string/jumbo p2, "type"

    .end local p2
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .end local p4
    invoke-virtual {v2, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    const-string p2, "date"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {v2, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 132
    const-string p2, "duration"

    int-to-long p4, p7

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {v2, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 133
    const-string p2, "new"

    const/4 p4, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v2, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    const-string p2, "firewalltype"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v2, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    const-string p2, "normalized_number"

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    if-eqz p0, :cond_2

    .line 137
    const-string p2, "name"

    iget-object p3, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .end local p3           #normalizedNumber:Ljava/lang/String;
    invoke-virtual {v2, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string p2, "numbertype"

    iget p3, p0, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 139
    const-string p2, "numberlabel"

    iget-object p3, p0, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-wide p2, p0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    const-wide/16 p4, 0x0

    cmp-long p2, p2, p4

    if-eqz p2, :cond_2

    .line 141
    const-string p2, "contactid"

    iget-wide p3, p0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 145
    :cond_2
    if-eqz p0, :cond_3

    iget-wide p2, p0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    const-wide/16 p4, 0x0

    cmp-long p2, p2, p4

    if-lez p2, :cond_3

    .line 146
    iget-wide p2, p0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v1, p2, p3}, Landroid/provider/ContactsContract$Contacts;->markAsContacted(Landroid/content/ContentResolver;J)V

    .line 149
    :cond_3
    sget-object p0, Lmiui/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .end local p0
    invoke-virtual {v1, p0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    .line 151
    .local p0, result:Landroid/net/Uri;
    invoke-static {p1}, Lmiui/provider/CallLog$Calls;->removeExpiredEntries(Landroid/content/Context;)V

    .line 154
    return-object p0

    .line 113
    .end local v2           #values:Landroid/content/ContentValues;
    .local p0, ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local p2
    .local p3, presentation:I
    .restart local p4
    :cond_4
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne p3, v0, :cond_5

    .line 114
    const-string p2, "-3"

    .line 115
    if-eqz p0, :cond_0

    const-string p3, ""

    .end local p3           #presentation:I
    iput-object p3, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 116
    .restart local p3       #presentation:I
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne p3, v0, :cond_0

    .line 118
    :cond_6
    const-string p2, "-1"

    .line 119
    if-eqz p0, :cond_0

    const-string p3, ""

    .end local p3           #presentation:I
    iput-object p3, p0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private static removeExpiredEntries(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 163
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lmiui/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id IN (SELECT _id FROM calls ORDER BY date DESC LIMIT -1 OFFSET 500)"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 166
    return-void
.end method
