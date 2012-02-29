.class public Lcom/android/internal/widget/EventWidget;
.super Landroid/widget/LinearLayout;
.source "EventWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/EventWidget$Event;
    }
.end annotation


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final DBG_TAG:Ljava/lang/String; = "EventWidget"

.field private static final DB_COUNT:Ljava/lang/String; = "count"

.field private static final DB_TAG:Ljava/lang/String; = "tag"

.field private static final LOCAL_LOGD:Z = false

.field private static final LOCKSCREEN_ACTIVATED_INTENT:Ljava/lang/String; = "com.sonyericsson.lockscreen.action.ACTIVATE"

.field private static final TAG_CALL:Ljava/lang/String; = "call"

.field private static final TAG_FB:Ljava/lang/String; = "fb"

.field private static final TAG_MSG:Ljava/lang/String; = "msg"


# instance fields
.field private mAttached:Z

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mDbTag2Event:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/widget/EventWidget$Event;",
            ">;"
        }
    .end annotation
.end field

.field private mEvents:[Lcom/android/internal/widget/EventWidget$Event;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "content://com.sonyericsson.lockscreen.notifications/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/EventWidget;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    const/4 v6, 0x3

    new-array v6, v6, [Lcom/android/internal/widget/EventWidget$Event;

    new-instance v7, Lcom/android/internal/widget/EventWidget$Event;

    const v8, 0x10803bb

    const v9, 0x10400dd

    invoke-direct {v7, p0, v8, v9}, Lcom/android/internal/widget/EventWidget$Event;-><init>(Lcom/android/internal/widget/EventWidget;II)V

    aput-object v7, v6, v10

    new-instance v7, Lcom/android/internal/widget/EventWidget$Event;

    const v8, 0x10803ba

    const v9, 0x10400dc

    invoke-direct {v7, p0, v8, v9}, Lcom/android/internal/widget/EventWidget$Event;-><init>(Lcom/android/internal/widget/EventWidget;II)V

    aput-object v7, v6, v11

    new-instance v7, Lcom/android/internal/widget/EventWidget$Event;

    const v8, 0x10803b9

    const v9, 0x10400de

    invoke-direct {v7, p0, v8, v9}, Lcom/android/internal/widget/EventWidget$Event;-><init>(Lcom/android/internal/widget/EventWidget;II)V

    aput-object v7, v6, v12

    iput-object v6, p0, Lcom/android/internal/widget/EventWidget;->mEvents:[Lcom/android/internal/widget/EventWidget$Event;

    .line 81
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/internal/widget/EventWidget;->mDbTag2Event:Ljava/util/Map;

    .line 83
    iget-object v6, p0, Lcom/android/internal/widget/EventWidget;->mDbTag2Event:Ljava/util/Map;

    const-string v7, "call"

    iget-object v8, p0, Lcom/android/internal/widget/EventWidget;->mEvents:[Lcom/android/internal/widget/EventWidget$Event;

    aget-object v8, v8, v10

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v6, p0, Lcom/android/internal/widget/EventWidget;->mDbTag2Event:Ljava/util/Map;

    const-string v7, "msg"

    iget-object v8, p0, Lcom/android/internal/widget/EventWidget;->mEvents:[Lcom/android/internal/widget/EventWidget$Event;

    aget-object v8, v8, v11

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v6, p0, Lcom/android/internal/widget/EventWidget;->mDbTag2Event:Ljava/util/Map;

    const-string v7, "fb"

    iget-object v8, p0, Lcom/android/internal/widget/EventWidget;->mEvents:[Lcom/android/internal/widget/EventWidget$Event;

    aget-object v8, v8, v12

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/android/internal/widget/EventWidget;->mHandler:Landroid/os/Handler;

    .line 99
    iget-object v0, p0, Lcom/android/internal/widget/EventWidget;->mEvents:[Lcom/android/internal/widget/EventWidget$Event;

    .local v0, arr$:[Lcom/android/internal/widget/EventWidget$Event;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 100
    .local v2, event:Lcom/android/internal/widget/EventWidget$Event;
    invoke-virtual {v2, p0}, Lcom/android/internal/widget/EventWidget$Event;->addToView(Landroid/widget/LinearLayout;)V

    .line 101
    invoke-virtual {v2, v10}, Lcom/android/internal/widget/EventWidget$Event;->setAmount(I)V

    .line 99
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 110
    .end local v2           #event:Lcom/android/internal/widget/EventWidget$Event;
    :cond_0
    :try_start_0
    const-string/jumbo v6, "sys.boot_completed"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 115
    .local v1, bootCompleted:Z
    if-eqz v1, :cond_1

    .line 116
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.sonyericsson.lockscreen.action.ACTIVATE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v1           #bootCompleted:Z
    :cond_1
    :goto_1
    return-void

    .line 118
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 119
    .local v3, ex:Ljava/lang/Exception;
    const-string v6, "EventWidget"

    const-string v7, "EventWidget boot/broadcast problem."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/widget/EventWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/internal/widget/EventWidget;->updateFromContentProvider()V

    return-void
.end method

.method static synthetic access$100()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/internal/widget/EventWidget;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/EventWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/widget/EventWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/EventWidget;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/widget/EventWidget;->mDbTag2Event:Ljava/util/Map;

    return-object v0
.end method

.method private deleteFromContentProvider()V
    .locals 2

    .prologue
    .line 175
    new-instance v0, Lcom/android/internal/widget/EventWidget$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/EventWidget$2;-><init>(Lcom/android/internal/widget/EventWidget;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/EventWidget$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 192
    return-void
.end method

.method private getContentObserver()Landroid/database/ContentObserver;
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/internal/widget/EventWidget;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/android/internal/widget/EventWidget$1;

    iget-object v1, p0, Lcom/android/internal/widget/EventWidget;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/EventWidget$1;-><init>(Lcom/android/internal/widget/EventWidget;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/widget/EventWidget;->mContentObserver:Landroid/database/ContentObserver;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/EventWidget;->mContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method private updateFromContentProvider()V
    .locals 2

    .prologue
    .line 195
    new-instance v0, Lcom/android/internal/widget/EventWidget$3;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/EventWidget$3;-><init>(Lcom/android/internal/widget/EventWidget;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/EventWidget$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 243
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 125
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 131
    iget-boolean v0, p0, Lcom/android/internal/widget/EventWidget;->mAttached:Z

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "EventWidget"

    const-string v1, "UNEXPECTED ERROR: onAttachedToWindow() already attached to window!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_0
    return-void

    .line 135
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/EventWidget;->mAttached:Z

    .line 137
    invoke-direct {p0}, Lcom/android/internal/widget/EventWidget;->updateFromContentProvider()V

    .line 138
    iget-object v0, p0, Lcom/android/internal/widget/EventWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/widget/EventWidget;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/EventWidget;->getContentObserver()Landroid/database/ContentObserver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 150
    iget-boolean v0, p0, Lcom/android/internal/widget/EventWidget;->mAttached:Z

    if-nez v0, :cond_0

    .line 151
    const-string v0, "EventWidget"

    const-string v1, "UNEXPECTED ERROR: onDetachedFromWindow() not attached to window!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_0
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/EventWidget;->mAttached:Z

    .line 156
    iget-object v0, p0, Lcom/android/internal/widget/EventWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/widget/EventWidget;->getContentObserver()Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
