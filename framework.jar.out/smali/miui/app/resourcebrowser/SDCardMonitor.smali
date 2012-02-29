.class public Lmiui/app/resourcebrowser/SDCardMonitor;
.super Ljava/lang/Object;
.source "SDCardMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/resourcebrowser/SDCardMonitor$1;,
        Lmiui/app/resourcebrowser/SDCardMonitor$SDCardStatusListener;,
        Lmiui/app/resourcebrowser/SDCardMonitor$SDCardReceiver;
    }
.end annotation


# static fields
.field private static mMonitor:Lmiui/app/resourcebrowser/SDCardMonitor;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lmiui/app/resourcebrowser/SDCardMonitor$SDCardStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lmiui/app/resourcebrowser/SDCardMonitor;->mContext:Landroid/content/Context;

    .line 21
    new-instance v0, Lmiui/app/resourcebrowser/SDCardMonitor$SDCardReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/app/resourcebrowser/SDCardMonitor$SDCardReceiver;-><init>(Lmiui/app/resourcebrowser/SDCardMonitor;Lmiui/app/resourcebrowser/SDCardMonitor$1;)V

    iput-object v0, p0, Lmiui/app/resourcebrowser/SDCardMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/app/resourcebrowser/SDCardMonitor;->mListeners:Ljava/util/HashSet;

    .line 23
    return-void
.end method

.method static synthetic access$100(Lmiui/app/resourcebrowser/SDCardMonitor;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lmiui/app/resourcebrowser/SDCardMonitor;->mListeners:Ljava/util/HashSet;

    return-object v0
.end method

.method public static getSDCardMonitor(Landroid/content/Context;)Lmiui/app/resourcebrowser/SDCardMonitor;
    .locals 2
    .parameter "context"

    .prologue
    .line 45
    sget-object v0, Lmiui/app/resourcebrowser/SDCardMonitor;->mMonitor:Lmiui/app/resourcebrowser/SDCardMonitor;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lmiui/app/resourcebrowser/SDCardMonitor;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/resourcebrowser/SDCardMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmiui/app/resourcebrowser/SDCardMonitor;->mMonitor:Lmiui/app/resourcebrowser/SDCardMonitor;

    .line 48
    :cond_0
    sget-object v0, Lmiui/app/resourcebrowser/SDCardMonitor;->mMonitor:Lmiui/app/resourcebrowser/SDCardMonitor;

    return-object v0
.end method


# virtual methods
.method public addListener(Lmiui/app/resourcebrowser/SDCardMonitor$SDCardStatusListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 26
    iget-object v1, p0, Lmiui/app/resourcebrowser/SDCardMonitor;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 28
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lmiui/app/resourcebrowser/SDCardMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/app/resourcebrowser/SDCardMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 34
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lmiui/app/resourcebrowser/SDCardMonitor;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public removeListener(Lmiui/app/resourcebrowser/SDCardMonitor$SDCardStatusListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 38
    iget-object v0, p0, Lmiui/app/resourcebrowser/SDCardMonitor;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lmiui/app/resourcebrowser/SDCardMonitor;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lmiui/app/resourcebrowser/SDCardMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/resourcebrowser/SDCardMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 42
    :cond_0
    return-void
.end method
