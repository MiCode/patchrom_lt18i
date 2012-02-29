.class public final Lmiui/provider/ExtraTelephony$MmsSms;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MmsSms"
.end annotation


# static fields
.field public static final CONTENT_ALL_LOCKED_URI:Landroid/net/Uri; = null

.field public static final CONTENT_CONVERSATION_THREAD_URI:Landroid/net/Uri; = null

.field public static final CONTENT_COUNT_OF_THREADS_MESSAGES:Landroid/net/Uri; = null

.field public static final CONTENT_PREVIEW_URI:Landroid/net/Uri; = null

.field public static final CONTENT_RECENT_RECIPIENTS_URI:Landroid/net/Uri; = null

.field public static final CONTENT_SUM_OF_UNREAD_COUNT:Landroid/net/Uri; = null

.field public static final CONTENT_UPDATE_BYADDRESS_URI:Landroid/net/Uri; = null

.field public static final PREVIEW_ADDRESS_COLUMN_INDEX:I = 0x1

.field public static final PREVIEW_BODY_COLUMN_INDEX:I = 0x4

.field public static final PREVIEW_CHARSET_COLUMN_INDEX:I = 0x5

.field public static final PREVIEW_DATE_COLUMN_INDEX:I = 0x2

.field public static final PREVIEW_ID_COLUMN_INDEX:I = 0x0

.field public static final PREVIEW_THREAD_ID_COLUMN_INDEX:I = 0x6

.field public static final PREVIEW_TYPE_COLUMN_INDEX:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-string v0, "content://mms-sms/threads/#"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$MmsSms;->CONTENT_CONVERSATION_THREAD_URI:Landroid/net/Uri;

    .line 73
    const-string v0, "content://mms-sms/addresses"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$MmsSms;->CONTENT_UPDATE_BYADDRESS_URI:Landroid/net/Uri;

    .line 76
    const-string v0, "content://mms-sms/sum-unread"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$MmsSms;->CONTENT_SUM_OF_UNREAD_COUNT:Landroid/net/Uri;

    .line 82
    const-string v0, "content://mms-sms/count-threads-messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$MmsSms;->CONTENT_COUNT_OF_THREADS_MESSAGES:Landroid/net/Uri;

    .line 85
    const-string v0, "content://mms-sms/message/preview"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$MmsSms;->CONTENT_PREVIEW_URI:Landroid/net/Uri;

    .line 92
    const-string v0, "content://mms-sms/locked/all"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$MmsSms;->CONTENT_ALL_LOCKED_URI:Landroid/net/Uri;

    .line 98
    const-string v0, "content://mms-sms/recent-recipients"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$MmsSms;->CONTENT_RECENT_RECIPIENTS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
