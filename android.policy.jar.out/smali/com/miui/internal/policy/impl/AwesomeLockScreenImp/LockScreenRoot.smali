.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;
.super Lmiui/app/screenelement/ScreenElement;
.source "LockScreenRoot.java"

# interfaces
.implements Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_FRAME_RATE:I = 0x1e

.field private static final LOG_TAG:Ljava/lang/String; = "LockScreenRoot"

.field private static final SMS_RECEIVED_WAKE_UP_DELAY:I = 0x61a8

.field private static final TAG_NAME_BATTERYFULL:Ljava/lang/String; = "BatteryFull"

.field private static final TAG_NAME_CHARGING:Ljava/lang/String; = "Charging"

.field private static final TAG_NAME_LOWBATTERY:Ljava/lang/String; = "BatteryLow"

.field private static final TAG_NAME_NORMAL:Ljava/lang/String; = "Normal"


# instance fields
.field private curCategory:Ljava/lang/String;

.field protected mCalendar:Ljava/util/Calendar;

.field private mDisplayDesktop:Z

.field private mElementGroup:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

.field private mFrameRate:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSoundManager:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;

.field private final mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

.field private mVariableBinderManager:Lmiui/app/screenelement/VariableBinderManager;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ScreenContext;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;)V
    .locals 3
    .parameter "c"
    .parameter "unlockerCallback"

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lmiui/app/screenelement/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mHandler:Landroid/os/Handler;

    .line 42
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mCalendar:Ljava/util/Calendar;

    .line 44
    new-instance v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1;-><init>(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 122
    const/16 v0, 0x1e

    iput v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:I

    .line 123
    const-string v0, "Normal"

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iput-object p0, v0, Lmiui/app/screenelement/ScreenContext;->mRoot:Lmiui/app/screenelement/ScreenElement;

    .line 130
    iput-object p2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    .line 131
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->initVariables()V

    .line 132
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->updateTime()V

    .line 133
    new-instance v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;

    iget-object v1, p1, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-direct {v0, v1, v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;-><init>(Landroid/content/Context;Lmiui/app/screenelement/ResourceManager;)V

    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mSoundManager:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;)Lmiui/app/screenelement/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;)Lmiui/app/screenelement/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->updateTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;)Lmiui/app/screenelement/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;)Lmiui/app/screenelement/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->translateName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;)Lmiui/app/screenelement/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;)Lmiui/app/screenelement/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;)Lmiui/app/screenelement/ScreenContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;)Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initVariables()V
    .locals 8

    .prologue
    .line 137
    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    const-string v5, "battery_level"

    iget-object v6, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget v6, v6, Lmiui/app/screenelement/ScreenContext;->mBatteryLevel:I

    int-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;D)V

    .line 139
    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 140
    .local v3, wm:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 141
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 142
    .local v2, w:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 143
    .local v1, h:I
    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    const-string v5, "screen_width"

    if-ge v2, v1, :cond_0

    int-to-double v6, v2

    :goto_0
    invoke-virtual {v4, v5, v6, v7}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;D)V

    .line 144
    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v4, v4, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    const-string v5, "screen_height"

    if-le v1, v2, :cond_1

    int-to-double v6, v1

    :goto_1
    invoke-virtual {v4, v5, v6, v7}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;D)V

    .line 145
    return-void

    .line 143
    :cond_0
    int-to-double v6, v1

    goto :goto_0

    .line 144
    :cond_1
    int-to-double v6, v2

    goto :goto_1
.end method

.method private refreshAlarm()V
    .locals 3

    .prologue
    .line 243
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "next_alarm_formatted"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, nextAlarm:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    const-string v2, "next_alarm_time"

    invoke-virtual {v1, v2, v0}, Lmiui/app/screenelement/Variables;->putStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method private translateName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "stringExtra"

    .prologue
    .line 113
    const-string v0, "com.android.contacts/.TwelveKeyDialer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "call_missed_count"

    .line 118
    :goto_0
    return-object v0

    .line 115
    :cond_0
    const-string v0, "com.android.mms/.ui.MmsTabActivity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    const-string v0, "sms_unread_count"

    goto :goto_0

    .line 118
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateBatteryInfo()V
    .locals 6

    .prologue
    .line 174
    const-string v0, "Normal"

    .line 175
    .local v0, newCategory:Ljava/lang/String;
    const/4 v1, 0x0

    .line 176
    .local v1, state:I
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-boolean v2, v2, Lmiui/app/screenelement/ScreenContext;->mShowingBatteryInfo:Z

    if-eqz v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-boolean v2, v2, Lmiui/app/screenelement/ScreenContext;->mPluggedIn:Z

    if-eqz v2, :cond_2

    .line 178
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget v2, v2, Lmiui/app/screenelement/ScreenContext;->mBatteryLevel:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_1

    .line 179
    const-string v0, "BatteryFull"

    .line 180
    const/4 v1, 0x3

    .line 192
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    if-ne v0, v2, :cond_3

    .line 198
    :goto_1
    return-void

    .line 182
    :cond_1
    const-string v0, "Charging"

    .line 183
    const/4 v1, 0x1

    goto :goto_0

    .line 186
    :cond_2
    const-string v0, "BatteryLow"

    .line 187
    const/4 v1, 0x2

    goto :goto_0

    .line 194
    :cond_3
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    const-string v3, "battery_state"

    int-to-double v4, v1

    invoke-virtual {v2, v3, v4, v5}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;D)V

    .line 195
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 196
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 197
    iput-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->curCategory:Ljava/lang/String;

    goto :goto_1
.end method

.method private updateTime()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 97
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 99
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    const-string v1, "ampm"

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v0, v4, v1, v2, v3}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 100
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    const-string v1, "hour12"

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v0, v4, v1, v2, v3}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 101
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    const-string v1, "hour24"

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v0, v4, v1, v2, v3}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 102
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    const-string v1, "minute"

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v0, v4, v1, v2, v3}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 103
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    const-string v1, "year"

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v0, v4, v1, v2, v3}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 104
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    const-string v1, "month"

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v0, v4, v1, v2, v3}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 105
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    const-string v1, "date"

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v0, v4, v1, v2, v3}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 107
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    const-string v1, "day_of_week"

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v0, v4, v1, v2, v3}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 108
    return-void
.end method


# virtual methods
.method public endUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 1
    .parameter "ele"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    invoke-virtual {v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;->endUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    .line 308
    :cond_0
    return-void
.end method

.method public findElement(Ljava/lang/String;)Lmiui/app/screenelement/ScreenElement;
    .locals 1
    .parameter "name"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    invoke-virtual {v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/ScreenElement;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;->finish()V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mVariableBinderManager:Lmiui/app/screenelement/VariableBinderManager;

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mVariableBinderManager:Lmiui/app/screenelement/VariableBinderManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/VariableBinderManager;->finish()V

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-virtual {v0}, Lmiui/app/screenelement/ResourceManager;->clear()V

    .line 300
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 301
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mSoundManager:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;->release()V

    .line 302
    return-void
.end method

.method public getContext()Lmiui/app/screenelement/ScreenContext;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    return-object v0
.end method

.method public getFrameRate()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:I

    return v0
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 208
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    invoke-virtual {v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;->init()V

    .line 210
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    const-string v2, "BatteryFull"

    invoke-virtual {v1, v2, v3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 211
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    const-string v2, "Charging"

    invoke-virtual {v1, v2, v3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 212
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    const-string v2, "BatteryLow"

    invoke-virtual {v1, v2, v3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mVariableBinderManager:Lmiui/app/screenelement/VariableBinderManager;

    if-eqz v1, :cond_1

    .line 216
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mVariableBinderManager:Lmiui/app/screenelement/VariableBinderManager;

    invoke-virtual {v1}, Lmiui/app/screenelement/VariableBinderManager;->init()V

    .line 219
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 220
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.APPLICATION_MESSAGE_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v1, v1, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 226
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->refreshAlarm()V

    .line 227
    return-void
.end method

.method public isDisplayDesktop()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mDisplayDesktop:Z

    return v0
.end method

.method public load()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 266
    :try_start_0
    iget-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v3, v3, Lmiui/app/screenelement/ScreenContext;->mResourceManager:Lmiui/app/screenelement/ResourceManager;

    invoke-virtual {v3}, Lmiui/app/screenelement/ResourceManager;->getManifestRoot()Lorg/w3c/dom/Element;
    :try_end_0
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 267
    .local v2, root:Lorg/w3c/dom/Element;
    if-nez v2, :cond_0

    move v3, v5

    .line 290
    .end local v2           #root:Lorg/w3c/dom/Element;
    :goto_0
    return v3

    .line 272
    .restart local v2       #root:Lorg/w3c/dom/Element;
    :cond_0
    :try_start_1
    const-string v3, "frameRate"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:I

    .line 273
    const-string v3, "displayDesktop"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mDisplayDesktop:Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 277
    :goto_1
    :try_start_2
    new-instance v3, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v3, v2, v4}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    iput-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    .line 280
    const-string v3, "VariableBinders"

    invoke-static {v2, v3}, Lmiui/app/screenelement/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 281
    .local v0, binders:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_1

    .line 282
    new-instance v3, Lmiui/app/screenelement/VariableBinderManager;

    iget-object v4, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v3, v0, v4}, Lmiui/app/screenelement/VariableBinderManager;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    iput-object v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mVariableBinderManager:Lmiui/app/screenelement/VariableBinderManager;

    .line 284
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 274
    .end local v0           #binders:Lorg/w3c/dom/Element;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 275
    .local v1, e:Ljava/lang/NumberFormatException;
    const/16 v3, 0x1e

    iput v3, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mFrameRate:I
    :try_end_2
    .catch Lmiui/app/screenelement/ScreenElementLoadException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 285
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v2           #root:Lorg/w3c/dom/Element;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 286
    .local v1, e:Lmiui/app/screenelement/ScreenElementLoadException;
    invoke-virtual {v1}, Lmiui/app/screenelement/ScreenElementLoadException;->printStackTrace()V

    .end local v1           #e:Lmiui/app/screenelement/ScreenElementLoadException;
    :goto_2
    move v3, v5

    .line 290
    goto :goto_0

    .line 287
    :catch_2
    move-exception v3

    move-object v1, v3

    .line 288
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    .line 250
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    if-nez v2, :cond_0

    .line 251
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    invoke-interface {v2, v6}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->unlocked(Landroid/content/Intent;)V

    .line 262
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 256
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 259
    .local v1, y:I
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    const-string v3, "touch_x"

    int-to-double v4, v0

    invoke-virtual {v2, v6, v3, v4, v5}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 260
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    const-string v3, "touch_y"

    int-to-double v4, v1

    invoke-virtual {v2, v6, v3, v4, v5}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 261
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    invoke-virtual {v2, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;->onTouch(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;->pause()V

    .line 233
    :cond_0
    return-void
.end method

.method public playSound(Ljava/lang/String;)V
    .locals 2
    .parameter "sound"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mSoundManager:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/SoundManager;->playSound(Ljava/lang/String;Z)V

    .line 163
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    invoke-virtual {v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;->render(Landroid/graphics/Canvas;)V

    .line 204
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;->resume()V

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->refreshAlarm()V

    .line 240
    return-void
.end method

.method public startUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V
    .locals 1
    .parameter "ele"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    invoke-virtual {v0, p1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;->startUnlockMoving(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)V

    .line 314
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 4
    .parameter "currentTime"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    const-string v1, "time"

    long-to-double v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;D)V

    .line 152
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 153
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v0, v0, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    const-string v1, "second"

    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;D)V

    .line 155
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mElementGroup:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenElementGroup;->tick(J)V

    .line 157
    invoke-direct {p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->updateBatteryInfo()V

    .line 159
    :cond_0
    return-void
.end method
