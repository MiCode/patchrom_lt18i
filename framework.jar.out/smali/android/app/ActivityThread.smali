.class public final Landroid/app/ActivityThread;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityThread$ProviderRefCount;,
        Landroid/app/ActivityThread$StopInfo;,
        Landroid/app/ActivityThread$ResourcesKey;,
        Landroid/app/ActivityThread$GcIdler;,
        Landroid/app/ActivityThread$Idler;,
        Landroid/app/ActivityThread$H;,
        Landroid/app/ActivityThread$ApplicationThread;,
        Landroid/app/ActivityThread$ProfilerControlData;,
        Landroid/app/ActivityThread$ContextCleanupInfo;,
        Landroid/app/ActivityThread$ResultData;,
        Landroid/app/ActivityThread$DumpServiceInfo;,
        Landroid/app/ActivityThread$AppBindData;,
        Landroid/app/ActivityThread$ServiceArgsData;,
        Landroid/app/ActivityThread$BindServiceData;,
        Landroid/app/ActivityThread$CreateServiceData;,
        Landroid/app/ActivityThread$CreateBackupAgentData;,
        Landroid/app/ActivityThread$ReceiverData;,
        Landroid/app/ActivityThread$NewIntentData;,
        Landroid/app/ActivityThread$ProviderClientRecord;,
        Landroid/app/ActivityThread$ActivityClientRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_BACKUP:Z = false

.field static final DEBUG_BROADCAST:Z = false

.field private static final DEBUG_CONFIGURATION:Z = false

.field static final DEBUG_MESSAGES:Z = false

.field private static final DEBUG_RESULTS:Z = false

.field private static final LOG_ON_PAUSE_CALLED:I = 0x7545

.field private static final LOG_ON_RESUME_CALLED:I = 0x7546

.field private static final MIN_TIME_BETWEEN_GCS:J = 0x1388L

.field private static final PATTERN_SEMICOLON:Ljava/util/regex/Pattern; = null

.field private static final SQLITE_MEM_RELEASED_EVENT_LOG_TAG:I = 0x124fb

.field static final TAG:Ljava/lang/String; = "ActivityThread"

.field private static final THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

.field static final localLOGV:Z

.field static mSystemContext:Landroid/app/ContextImpl;

.field static sMainThreadHandler:Landroid/os/Handler;

.field static sPackageManager:Landroid/content/pm/IPackageManager;

.field static final sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/app/ActivityThread;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mActiveResources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/app/ActivityThread$ResourcesKey;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field final mActivities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mAllApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field final mAppThread:Landroid/app/ActivityThread$ApplicationThread;

.field final mBackupAgents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/backup/BackupAgent;",
            ">;"
        }
    .end annotation
.end field

.field mBoundApplication:Landroid/app/ActivityThread$AppBindData;

.field mConfiguration:Landroid/content/res/Configuration;

.field mDisplay:Landroid/view/Display;

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field final mGcIdler:Landroid/app/ActivityThread$GcIdler;

.field mGcIdlerScheduled:Z

.field final mH:Landroid/app/ActivityThread$H;

.field mInitialApplication:Landroid/app/Application;

.field mInstrumentation:Landroid/app/Instrumentation;

.field mInstrumentationAppDir:Ljava/lang/String;

.field mInstrumentationAppPackage:Ljava/lang/String;

.field mInstrumentedAppDir:Ljava/lang/String;

.field mJitEnabled:Z

.field final mLocalProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mLooper:Landroid/os/Looper;

.field mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

.field mNumVisibleActivities:I

.field final mOnPauseListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/OnActivityPausedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/LoadedApk;",
            ">;>;"
        }
    .end annotation
.end field

.field mPendingConfiguration:Landroid/content/res/Configuration;

.field final mProviderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/ActivityThread$ProviderClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mProviderRefCountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/ActivityThread$ProviderRefCount;",
            ">;"
        }
    .end annotation
.end field

.field final mRelaunchingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field mResConfiguration:Landroid/content/res/Configuration;

.field final mResourcePackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/LoadedApk;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field mSystemThread:Z

.field private mThumbnailHeight:I

.field private mThumbnailWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sput-object v0, Landroid/app/ActivityThread;->THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

    .line 132
    const-string v0, ";"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/app/ActivityThread;->PATTERN_SEMICOLON:Ljava/util/regex/Pattern;

    .line 137
    const/4 v0, 0x0

    sput-object v0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    .line 162
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/app/ActivityThread;->sThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Landroid/app/ActivityThread$ApplicationThread;

    invoke-direct {v0, p0, v1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    .line 142
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    .line 143
    new-instance v0, Landroid/app/ActivityThread$H;

    invoke-direct {v0, p0, v1}, Landroid/app/ActivityThread$H;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    .line 148
    iput-object v1, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 150
    iput v2, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    .line 154
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mBackupAgents:Ljava/util/HashMap;

    .line 164
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 165
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentationAppPackage:Ljava/lang/String;

    .line 166
    iput-object v1, p0, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 167
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    .line 168
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mResourcePackages:Ljava/util/HashMap;

    .line 177
    iput-object v1, p0, Landroid/app/ActivityThread;->mDisplay:Landroid/view/Display;

    .line 178
    iput-object v1, p0, Landroid/app/ActivityThread;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mActiveResources:Ljava/util/HashMap;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    .line 183
    iput-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mLocalProviders:Ljava/util/HashMap;

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Ljava/util/HashMap;

    .line 196
    new-instance v0, Landroid/app/ActivityThread$GcIdler;

    invoke-direct {v0, p0}, Landroid/app/ActivityThread$GcIdler;-><init>(Landroid/app/ActivityThread;)V

    iput-object v0, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    .line 197
    iput-boolean v2, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 2252
    iput v3, p0, Landroid/app/ActivityThread;->mThumbnailWidth:I

    .line 2253
    iput v3, p0, Landroid/app/ActivityThread;->mThumbnailHeight:I

    .line 1348
    return-void
.end method

.method static synthetic access$1500(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ActivityClientRecord;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;I)V

    return-void
.end method

.method static synthetic access$1700(Landroid/app/ActivityThread;Landroid/os/IBinder;ZZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->handlePauseActivity(Landroid/os/IBinder;ZZI)V

    return-void
.end method

.method static synthetic access$1800(Landroid/app/ActivityThread;Landroid/os/IBinder;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->handleStopActivity(Landroid/os/IBinder;ZI)V

    return-void
.end method

.method static synthetic access$1900(Landroid/app/ActivityThread;Landroid/os/IBinder;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->handleWindowVisibility(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/ActivityThread;ILjava/lang/Object;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$2000(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ResultData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleSendResult(Landroid/app/ActivityThread$ResultData;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/app/ActivityThread;Landroid/os/IBinder;ZIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/os/IBinder;ZIZ)V

    return-void
.end method

.method static synthetic access$2200(Landroid/app/ActivityThread;Landroid/app/ActivityThread$AppBindData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/app/ActivityThread;Landroid/app/ActivityThread$NewIntentData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleNewIntent(Landroid/app/ActivityThread$NewIntentData;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ReceiverData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateServiceData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleBindService(Landroid/app/ActivityThread$BindServiceData;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/app/ActivityThread;Landroid/app/ActivityThread$BindServiceData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V

    return-void
.end method

.method static synthetic access$2800(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ServiceArgsData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V

    return-void
.end method

.method static synthetic access$2900(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleStopService(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3000(Landroid/app/ActivityThread;Landroid/os/IBinder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleRequestThumbnail(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$3100(Landroid/app/ActivityThread;Landroid/app/ActivityThread$DumpServiceInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDumpService(Landroid/app/ActivityThread$DumpServiceInfo;)V

    return-void
.end method

.method static synthetic access$3200(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V

    return-void
.end method

.method static synthetic access$3300(Landroid/app/ActivityThread;Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V

    return-void
.end method

.method static synthetic access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V

    return-void
.end method

.method private final attach(Z)V
    .locals 7
    .parameter "system"

    .prologue
    .line 3609
    sget-object v4, Landroid/app/ActivityThread;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3610
    iput-boolean p1, p0, Landroid/app/ActivityThread;->mSystemThread:Z

    .line 3611
    if-nez p1, :cond_0

    .line 3612
    new-instance v4, Landroid/app/ActivityThread$1;

    invoke-direct {v4, p0}, Landroid/app/ActivityThread$1;-><init>(Landroid/app/ActivityThread;)V

    invoke-static {v4}, Landroid/view/ViewRoot;->addFirstDrawHandler(Ljava/lang/Runnable;)V

    .line 3617
    const-string v4, "<pre-initialized>"

    invoke-static {v4}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;)V

    .line 3618
    iget-object v4, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/os/RuntimeInit;->setApplicationObject(Landroid/os/IBinder;)V

    .line 3619
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 3621
    .local v3, mgr:Landroid/app/IActivityManager;
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->attachApplication(Landroid/app/IApplicationThread;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3642
    .end local v3           #mgr:Landroid/app/IActivityManager;
    :goto_0
    new-instance v4, Landroid/app/ActivityThread$2;

    invoke-direct {v4, p0}, Landroid/app/ActivityThread$2;-><init>(Landroid/app/ActivityThread;)V

    invoke-static {v4}, Landroid/view/ViewRoot;->addConfigCallback(Landroid/content/ComponentCallbacks;)V

    .line 3663
    return-void

    .line 3627
    :cond_0
    const-string/jumbo v4, "system_process"

    invoke-static {v4}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;)V

    .line 3629
    :try_start_1
    new-instance v4, Landroid/app/Instrumentation;

    invoke-direct {v4}, Landroid/app/Instrumentation;-><init>()V

    iput-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    .line 3630
    new-instance v1, Landroid/app/ContextImpl;

    invoke-direct {v1}, Landroid/app/ContextImpl;-><init>()V

    .line 3631
    .local v1, context:Landroid/app/ContextImpl;
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v4

    iget-object v4, v4, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, p0}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 3632
    const-class v4, Landroid/app/Application;

    invoke-static {v4, v1}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    .line 3633
    .local v0, app:Landroid/app/Application;
    iget-object v4, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3634
    iput-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 3635
    invoke-virtual {v0}, Landroid/app/Application;->onCreate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3636
    .end local v0           #app:Landroid/app/Application;
    .end local v1           #context:Landroid/app/ContextImpl;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 3637
    .local v2, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to instantiate Application():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 3622
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #mgr:Landroid/app/IActivityManager;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private final createThumbnailBitmap(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "r"

    .prologue
    .line 2256
    const/4 v4, 0x0

    .line 2258
    .local v4, thumbnail:Landroid/graphics/Bitmap;
    :try_start_0
    iget v6, p0, Landroid/app/ActivityThread;->mThumbnailWidth:I

    .line 2260
    .local v6, w:I
    if-gez v6, :cond_1

    .line 2261
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2262
    .local v3, res:Landroid/content/res/Resources;
    const v7, 0x1050001

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .local v2, h:I
    iput v2, p0, Landroid/app/ActivityThread;->mThumbnailHeight:I

    .line 2265
    const v7, 0x1050002

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Landroid/app/ActivityThread;->mThumbnailWidth:I

    .line 2272
    .end local v3           #res:Landroid/content/res/Resources;
    :goto_0
    if-lez v6, :cond_0

    if-lez v2, :cond_0

    .line 2273
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    .line 2276
    .local v5, topView:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    if-lt v7, v8, :cond_2

    .line 2277
    sget-object v7, Landroid/app/ActivityThread;->THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2282
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 2283
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2284
    .local v0, cv:Landroid/graphics/Canvas;
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v7, v4, v0}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2285
    const/4 v4, 0x0

    .line 2299
    .end local v0           #cv:Landroid/graphics/Canvas;
    .end local v2           #h:I
    .end local v5           #topView:Landroid/view/View;
    .end local v6           #w:I
    :cond_0
    :goto_2
    return-object v4

    .line 2268
    .restart local v6       #w:I
    :cond_1
    iget v2, p0, Landroid/app/ActivityThread;->mThumbnailHeight:I

    .restart local v2       #h:I
    goto :goto_0

    .line 2279
    .restart local v5       #topView:Landroid/view/View;
    :cond_2
    sget-object v7, Landroid/app/ActivityThread;->THUMBNAIL_FORMAT:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 2289
    .end local v2           #h:I
    .end local v5           #topView:Landroid/view/View;
    .end local v6           #w:I
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 2290
    .local v1, e:Ljava/lang/Exception;
    iget-object v7, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v7, v8, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2291
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to create thumbnail of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 2296
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public static final currentActivityThread()Landroid/app/ActivityThread;
    .locals 1

    .prologue
    .line 1132
    sget-object v0, Landroid/app/ActivityThread;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread;

    return-object v0
.end method

.method public static final currentApplication()Landroid/app/Application;
    .locals 2

    .prologue
    .line 1142
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1143
    .local v0, am:Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final currentPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1136
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1137
    .local v0, am:Landroid/app/ActivityThread;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V
    .locals 5
    .parameter "r"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1730
    .local p2, intents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 1731
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1732
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 1733
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 1734
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v2}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 1731
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1736
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private final deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V
    .locals 9
    .parameter "r"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread$ActivityClientRecord;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2540
    .local p2, results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 2541
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 2542
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ResultInfo;

    .line 2544
    .local v3, ri:Landroid/app/ResultInfo;
    :try_start_0
    iget-object v4, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    if-eqz v4, :cond_0

    .line 2545
    iget-object v4, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 2549
    :cond_0
    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v5, v3, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    iget v6, v3, Landroid/app/ResultInfo;->mRequestCode:I

    iget v7, v3, Landroid/app/ResultInfo;->mResultCode:I

    iget-object v8, v3, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/app/Activity;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2541
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2551
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 2552
    .local v1, e:Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2553
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure delivering result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 2560
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #ri:Landroid/app/ResultInfo;
    :cond_2
    return-void
.end method

.method private final detach()V
    .locals 2

    .prologue
    .line 3667
    sget-object v0, Landroid/app/ActivityThread;->sThreadLocal:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3668
    return-void
.end method

.method private final getExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 3
    .parameter "context"
    .parameter "name"

    .prologue
    .line 3348
    iget-object v1, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3349
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 3350
    .local v0, pr:Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v0, :cond_0

    .line 3351
    iget-object v2, v0, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    monitor-exit v1

    move-object v1, v2

    .line 3353
    :goto_0
    return-object v1

    :cond_0
    const/4 v2, 0x0

    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    .line 3354
    .end local v0           #pr:Landroid/app/ActivityThread$ProviderClientRecord;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private final getPackageInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;ZZ)Landroid/app/LoadedApk;
    .locals 9
    .parameter "aInfo"
    .parameter "baseLoader"
    .parameter "securityViolation"
    .parameter "includeCode"

    .prologue
    .line 1316
    iget-object v8, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v8

    .line 1318
    if-eqz p4, :cond_2

    .line 1319
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    .line 1323
    .local v7, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_0
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LoadedApk;

    move-object v0, v1

    .line 1324
    .local v0, packageInfo:Landroid/app/LoadedApk;
    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1331
    :cond_0
    new-instance v0, Landroid/app/LoadedApk;

    .end local v0           #packageInfo:Landroid/app/LoadedApk;
    if-eqz p4, :cond_4

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    move v6, v1

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Landroid/app/ActivityThread;Ljava/lang/ClassLoader;ZZ)V

    .line 1335
    .restart local v0       #packageInfo:Landroid/app/LoadedApk;
    if-eqz p4, :cond_5

    .line 1336
    iget-object v1, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    :cond_1
    :goto_3
    monitor-exit v8

    return-object v0

    .line 1321
    .end local v0           #packageInfo:Landroid/app/LoadedApk;
    .end local v7           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_2
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcePackages:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    .restart local v7       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_0

    .line 1323
    :cond_3
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_1

    .line 1331
    :cond_4
    const/4 v1, 0x0

    move v6, v1

    goto :goto_2

    .line 1339
    .restart local v0       #packageInfo:Landroid/app/LoadedApk;
    :cond_5
    iget-object v1, p0, Landroid/app/ActivityThread;->mResourcePackages:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1344
    .end local v0           #packageInfo:Landroid/app/LoadedApk;
    .end local v7           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getPackageManager()Landroid/content/pm/IPackageManager;
    .locals 2

    .prologue
    .line 1147
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_0

    .line 1149
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 1155
    :goto_0
    return-object v1

    .line 1151
    :cond_0
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1153
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    sput-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    .line 1155
    sget-object v1, Landroid/app/ActivityThread;->sPackageManager:Landroid/content/pm/IPackageManager;

    goto :goto_0
.end method

.method private final getProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 8
    .parameter "context"
    .parameter "name"

    .prologue
    .line 3358
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->getExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 3359
    .local v0, existing:Landroid/content/IContentProvider;
    if-eqz v0, :cond_0

    move-object v3, v0

    .line 3386
    :goto_0
    return-object v3

    .line 3363
    :cond_0
    const/4 v1, 0x0

    .line 3365
    .local v1, holder:Landroid/app/IActivityManager$ContentProviderHolder;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v4

    invoke-interface {v3, v4, p2}, Landroid/app/IActivityManager;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;)Landroid/app/IActivityManager$ContentProviderHolder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3369
    :goto_1
    if-nez v1, :cond_1

    .line 3370
    const-string v3, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find provider info for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3371
    const/4 v3, 0x0

    goto :goto_0

    .line 3374
    :cond_1
    iget-object v3, v1, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    iget-object v4, v1, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    const/4 v5, 0x1

    invoke-direct {p0, p1, v3, v4, v5}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/content/IContentProvider;Landroid/content/pm/ProviderInfo;Z)Landroid/content/IContentProvider;

    move-result-object v2

    .line 3377
    .local v2, prov:Landroid/content/IContentProvider;
    iget-boolean v3, v1, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    if-nez v3, :cond_2

    iget-object v3, v1, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-nez v3, :cond_3

    .line 3382
    :cond_2
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3383
    :try_start_1
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-interface {v2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    new-instance v6, Landroid/app/ActivityThread$ProviderRefCount;

    const/16 v7, 0x2710

    invoke-direct {v6, p0, v7}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ActivityThread;I)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3384
    monitor-exit v3

    :cond_3
    move-object v3, v2

    .line 3386
    goto :goto_0

    .line 3384
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 3367
    .end local v2           #prov:Landroid/content/IContentProvider;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private final handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
    .locals 20
    .parameter "data"

    .prologue
    .line 3140
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    .line 3141
    new-instance v5, Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    .line 3144
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 3145
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Landroid/ddm/DdmHandleAppName;->setAppName(Ljava/lang/String;)V

    .line 3153
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 3158
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v5}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 3165
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 3167
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    .line 3173
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x81

    if-eqz v5, :cond_0

    .line 3176
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    .line 3182
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x2000

    if-nez v5, :cond_1

    .line 3184
    const/16 v5, 0xa0

    invoke-static {v5}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    .line 3187
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    move v5, v0

    if-eqz v5, :cond_2

    .line 3189
    const/16 v5, 0x1fa4

    invoke-static {v5}, Landroid/os/Debug;->changeDebugPort(I)V

    .line 3190
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 3191
    const-string v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Application "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is waiting for the debugger on port 8100..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3194
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v17

    .line 3196
    .local v17, mgr:Landroid/app/IActivityManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, v17

    move-object v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5

    .line 3200
    :goto_0
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 3203
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    move-object v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    .line 3213
    .end local v17           #mgr:Landroid/app/IActivityManager;
    :cond_2
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    move-object v5, v0

    if-eqz v5, :cond_8

    .line 3214
    new-instance v8, Landroid/app/ContextImpl;

    invoke-direct {v8}, Landroid/app/ContextImpl;-><init>()V

    .line 3215
    .local v8, appContext:Landroid/app/ContextImpl;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    move-object v5, v0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 3216
    const/4 v15, 0x0

    .line 3218
    .local v15, ii:Landroid/content/pm/InstrumentationInfo;
    :try_start_2
    invoke-virtual {v8}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v15

    .line 3222
    :goto_2
    if-nez v15, :cond_4

    .line 3223
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to find instrumentation info for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3208
    .end local v8           #appContext:Landroid/app/ContextImpl;
    .end local v15           #ii:Landroid/content/pm/InstrumentationInfo;
    :cond_3
    const-string v5, "ActivityThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Application "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " can be debugged on port 8100..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3228
    .restart local v8       #appContext:Landroid/app/ContextImpl;
    .restart local v15       #ii:Landroid/content/pm/InstrumentationInfo;
    :cond_4
    iget-object v5, v15, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ActivityThread;->mInstrumentationAppDir:Ljava/lang/String;

    .line 3229
    iget-object v5, v15, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ActivityThread;->mInstrumentationAppPackage:Ljava/lang/String;

    .line 3230
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/LoadedApk;->getAppDir()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ActivityThread;->mInstrumentedAppDir:Ljava/lang/String;

    .line 3232
    new-instance v16, Landroid/content/pm/ApplicationInfo;

    invoke-direct/range {v16 .. v16}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 3233
    .local v16, instrApp:Landroid/content/pm/ApplicationInfo;
    iget-object v5, v15, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3234
    iget-object v5, v15, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 3235
    iget-object v5, v15, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 3236
    iget-object v5, v15, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 3237
    iget-object v5, v15, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 3238
    invoke-virtual {v8}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v5

    move v3, v6

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;ZZ)Landroid/app/LoadedApk;

    move-result-object v18

    .line 3240
    .local v18, pi:Landroid/app/LoadedApk;
    new-instance v7, Landroid/app/ContextImpl;

    invoke-direct {v7}, Landroid/app/ContextImpl;-><init>()V

    .line 3241
    .local v7, instrContext:Landroid/app/ContextImpl;
    const/4 v5, 0x0

    move-object v0, v7

    move-object/from16 v1, v18

    move-object v2, v5

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 3244
    :try_start_3
    invoke-virtual {v7}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    .line 3245
    .local v12, cl:Ljava/lang/ClassLoader;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Instrumentation;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 3253
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v5, v0

    new-instance v9, Landroid/content/ComponentName;

    iget-object v6, v15, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iget-object v10, v15, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v6, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    move-object v10, v0

    move-object/from16 v6, p0

    invoke-virtual/range {v5 .. v10}, Landroid/app/Instrumentation;->init(Landroid/app/ActivityThread;Landroid/content/Context;Landroid/content/Context;Landroid/content/ComponentName;Landroid/app/IInstrumentationWatcher;)V

    .line 3256
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->profileFile:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_5

    iget-boolean v5, v15, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    if-nez v5, :cond_5

    .line 3257
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p1

    iput-boolean v0, v1, Landroid/app/ActivityThread$AppBindData;->handlingProfiling:Z

    .line 3258
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->profileFile:Ljava/lang/String;

    move-object v5, v0

    invoke-direct {v14, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3259
    .local v14, file:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 3260
    invoke-virtual {v14}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x80

    invoke-static {v5, v6}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 3264
    .end local v14           #file:Ljava/io/File;
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 3278
    .end local v7           #instrContext:Landroid/app/ContextImpl;
    .end local v8           #appContext:Landroid/app/ContextImpl;
    .end local v12           #cl:Ljava/lang/ClassLoader;
    .end local v15           #ii:Landroid/content/pm/InstrumentationInfo;
    .end local v16           #instrApp:Landroid/content/pm/ApplicationInfo;
    .end local v18           #pi:Landroid/app/LoadedApk;
    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->info:Landroid/app/LoadedApk;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    move v6, v0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v11

    .line 3279
    .local v11, app:Landroid/app/Application;
    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    .line 3281
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    move-object/from16 v19, v0

    .line 3282
    .local v19, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    if-eqz v19, :cond_6

    .line 3283
    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V

    .line 3286
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    move-object v5, v0

    const/16 v6, 0x84

    const-wide/16 v7, 0x2710

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/ActivityThread$H;->sendEmptyMessageDelayed(IJ)Z

    .line 3290
    :cond_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v5, v0

    invoke-virtual {v5, v11}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 3298
    :cond_7
    return-void

    .line 3247
    .end local v11           #app:Landroid/app/Application;
    .end local v19           #providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .restart local v7       #instrContext:Landroid/app/ContextImpl;
    .restart local v8       #appContext:Landroid/app/ContextImpl;
    .restart local v15       #ii:Landroid/content/pm/InstrumentationInfo;
    .restart local v16       #instrApp:Landroid/content/pm/ApplicationInfo;
    .restart local v18       #pi:Landroid/app/LoadedApk;
    :catch_0
    move-exception v5

    move-object v13, v5

    .line 3248
    .local v13, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to instantiate instrumentation "

    .end local v7           #instrContext:Landroid/app/ContextImpl;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 3266
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v7       #instrContext:Landroid/app/ContextImpl;
    .restart local v12       #cl:Ljava/lang/ClassLoader;
    :catch_1
    move-exception v5

    move-object v13, v5

    .line 3267
    .restart local v13       #e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception thrown in onCreate() of "

    .end local v7           #instrContext:Landroid/app/ContextImpl;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 3273
    .end local v8           #appContext:Landroid/app/ContextImpl;
    .end local v12           #cl:Ljava/lang/ClassLoader;
    .end local v13           #e:Ljava/lang/Exception;
    .end local v15           #ii:Landroid/content/pm/InstrumentationInfo;
    .end local v16           #instrApp:Landroid/content/pm/ApplicationInfo;
    .end local v18           #pi:Landroid/app/LoadedApk;
    :cond_8
    new-instance v5, Landroid/app/Instrumentation;

    invoke-direct {v5}, Landroid/app/Instrumentation;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    goto/16 :goto_3

    .line 3291
    .restart local v11       #app:Landroid/app/Application;
    .restart local v19       #providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :catch_2
    move-exception v5

    move-object v13, v5

    .line 3292
    .restart local v13       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v5, v0

    invoke-virtual {v5, v11, v13}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 3293
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create application "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 3220
    .end local v11           #app:Landroid/app/Application;
    .end local v13           #e:Ljava/lang/Exception;
    .end local v19           #providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .restart local v8       #appContext:Landroid/app/ContextImpl;
    .restart local v15       #ii:Landroid/content/pm/InstrumentationInfo;
    :catch_3
    move-exception v5

    goto/16 :goto_2

    .line 3204
    .end local v8           #appContext:Landroid/app/ContextImpl;
    .end local v15           #ii:Landroid/content/pm/InstrumentationInfo;
    .restart local v17       #mgr:Landroid/app/IActivityManager;
    :catch_4
    move-exception v5

    goto/16 :goto_1

    .line 3197
    :catch_5
    move-exception v5

    goto/16 :goto_0
.end method

.method private final handleBindService(Landroid/app/ActivityThread$BindServiceData;)V
    .locals 8
    .parameter "data"

    .prologue
    .line 1984
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Service;

    .line 1985
    .local v2, s:Landroid/app/Service;
    if-eqz v2, :cond_0

    .line 1987
    :try_start_0
    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1989
    :try_start_1
    iget-boolean v3, p1, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    if-nez v3, :cond_1

    .line 1990
    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    .line 1991
    .local v0, binder:Landroid/os/IBinder;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-interface {v3, v4, v5, v0}, Landroid/app/IActivityManager;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 1998
    .end local v0           #binder:Landroid/os/IBinder;
    :goto_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->ensureJitEnabled()V

    .line 2009
    :cond_0
    :goto_1
    return-void

    .line 1994
    :cond_1
    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 1995
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1999
    :catch_0
    move-exception v3

    goto :goto_1

    .line 2001
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 2002
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v2, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2003
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to bind to service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private final handleCreateBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 12
    .parameter "data"

    .prologue
    const-string v11, "ActivityThread"

    .line 1856
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 1859
    iget-object v9, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v9}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;

    move-result-object v7

    .line 1860
    .local v7, packageInfo:Landroid/app/LoadedApk;
    iget-object v8, v7, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 1861
    .local v8, packageName:Ljava/lang/String;
    iget-object v9, p0, Landroid/app/ActivityThread;->mBackupAgents:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 1862
    const-string v9, "ActivityThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BackupAgent   for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " already exists"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    :goto_0
    return-void

    .line 1867
    :cond_0
    const/4 v1, 0x0

    .line 1868
    .local v1, agent:Landroid/app/backup/BackupAgent;
    iget-object v9, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v9, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 1869
    .local v4, classname:Ljava/lang/String;
    if-nez v4, :cond_2

    .line 1870
    iget v9, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    if-nez v9, :cond_1

    .line 1871
    const-string v9, "ActivityThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Attempted incremental backup but no defined agent for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1875
    :cond_1
    const-string v4, "android.app.FullBackupAgent"

    .line 1878
    :cond_2
    const/4 v2, 0x0

    .line 1880
    .local v2, binder:Landroid/os/IBinder;
    :try_start_0
    invoke-virtual {v7}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 1881
    .local v3, cl:Ljava/lang/ClassLoader;
    iget-object v9, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/app/backup/BackupAgent;

    move-object v1, v0

    .line 1887
    new-instance v5, Landroid/app/ContextImpl;

    invoke-direct {v5}, Landroid/app/ContextImpl;-><init>()V

    .line 1888
    .local v5, context:Landroid/app/ContextImpl;
    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9, p0}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 1889
    invoke-virtual {v5, v1}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 1890
    invoke-virtual {v1, v5}, Landroid/app/backup/BackupAgent;->attach(Landroid/content/Context;)V

    .line 1892
    invoke-virtual {v1}, Landroid/app/backup/BackupAgent;->onCreate()V

    .line 1893
    invoke-virtual {v1}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v2

    .line 1894
    iget-object v9, p0, Landroid/app/ActivityThread;->mBackupAgents:Ljava/util/HashMap;

    invoke-virtual {v9, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1907
    .end local v3           #cl:Ljava/lang/ClassLoader;
    .end local v5           #context:Landroid/app/ContextImpl;
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v9

    invoke-interface {v9, v8, v2}, Landroid/app/IActivityManager;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 1908
    :catch_0
    move-exception v9

    goto :goto_0

    .line 1895
    :catch_1
    move-exception v9

    move-object v6, v9

    .line 1898
    .local v6, e:Ljava/lang/Exception;
    :try_start_2
    const-string v9, "ActivityThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Agent threw during creation: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    iget v9, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_3

    .line 1900
    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1911
    .end local v6           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v9

    move-object v6, v9

    .line 1912
    .restart local v6       #e:Ljava/lang/Exception;
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to create BackupAgent "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method

.method private final handleCreateService(Landroid/app/ActivityThread$CreateServiceData;)V
    .locals 13
    .parameter "data"

    .prologue
    const-string v12, ": "

    .line 1940
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 1942
    iget-object v3, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v3}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;

    move-result-object v10

    .line 1944
    .local v10, packageInfo:Landroid/app/LoadedApk;
    const/4 v1, 0x0

    .line 1946
    .local v1, service:Landroid/app/Service;
    :try_start_0
    invoke-virtual {v10}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 1947
    .local v8, cl:Ljava/lang/ClassLoader;
    iget-object v3, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/app/Service;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1959
    .end local v8           #cl:Ljava/lang/ClassLoader;
    :cond_0
    :try_start_1
    new-instance v2, Landroid/app/ContextImpl;

    invoke-direct {v2}, Landroid/app/ContextImpl;-><init>()V

    .line 1960
    .local v2, context:Landroid/app/ContextImpl;
    const/4 v3, 0x0

    invoke-virtual {v2, v10, v3, p0}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 1962
    const/4 v3, 0x0

    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v10, v3, v4}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v6

    .line 1963
    .local v6, app:Landroid/app/Application;
    invoke-virtual {v2, v1}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 1964
    iget-object v3, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    move-object v3, p0

    invoke-virtual/range {v1 .. v7}, Landroid/app/Service;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)V

    .line 1966
    invoke-virtual {v1}, Landroid/app/Service;->onCreate()V

    .line 1967
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1969
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-interface {v3, v4, v5, v7, v11}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1981
    .end local v2           #context:Landroid/app/ContextImpl;
    .end local v6           #app:Landroid/app/Application;
    :cond_1
    :goto_0
    return-void

    .line 1948
    :catch_0
    move-exception v3

    move-object v9, v3

    .line 1949
    .local v9, e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v1, v9}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1950
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1974
    .end local v9           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    move-object v9, v3

    .line 1975
    .restart local v9       #e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v1, v9}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1976
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1971
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v2       #context:Landroid/app/ContextImpl;
    .restart local v6       #app:Landroid/app/Application;
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method private final handleDestroyActivity(Landroid/os/IBinder;ZIZ)V
    .locals 9
    .parameter "token"
    .parameter "finishing"
    .parameter "configChanges"
    .parameter "getNonConfigInstance"

    .prologue
    const-string v8, "Activity"

    .line 2711
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;ZIZ)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v1

    .line 2713
    .local v1, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v1, :cond_4

    .line 2714
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    .line 2715
    .local v3, wm:Landroid/view/WindowManager;
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, v5, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 2716
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_3

    .line 2717
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v5, v5, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v5, :cond_0

    .line 2718
    iget v5, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iput v5, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 2720
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    .line 2721
    .local v4, wtoken:Landroid/os/IBinder;
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v5, v5, Landroid/app/Activity;->mWindowAdded:Z

    if-eqz v5, :cond_1

    .line 2722
    invoke-interface {v3, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2724
    :cond_1
    if-eqz v4, :cond_2

    .line 2725
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Activity"

    invoke-virtual {v5, v4, v6, v8}, Landroid/view/WindowManagerImpl;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 2728
    :cond_2
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 2730
    .end local v4           #wtoken:Landroid/os/IBinder;
    :cond_3
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v5

    iget-object v6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Activity"

    invoke-virtual {v5, p1, v6, v8}, Landroid/view/WindowManagerImpl;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 2737
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 2738
    .local v0, c:Landroid/content/Context;
    instance-of v5, v0, Landroid/app/ContextImpl;

    if-eqz v5, :cond_4

    .line 2739
    check-cast v0, Landroid/app/ContextImpl;

    .end local v0           #c:Landroid/content/Context;
    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Activity"

    invoke-virtual {v0, v5, v8}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 2743
    .end local v2           #v:Landroid/view/View;
    .end local v3           #wm:Landroid/view/WindowManager;
    :cond_4
    if-eqz p2, :cond_5

    .line 2745
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, p1}, Landroid/app/IActivityManager;->activityDestroyed(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2750
    :cond_5
    :goto_0
    return-void

    .line 2746
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private final handleDestroyBackupAgent(Landroid/app/ActivityThread$CreateBackupAgentData;)V
    .locals 7
    .parameter "data"

    .prologue
    const-string v6, "ActivityThread"

    .line 1921
    iget-object v4, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v4}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;

    move-result-object v2

    .line 1922
    .local v2, packageInfo:Landroid/app/LoadedApk;
    iget-object v3, v2, Landroid/app/LoadedApk;->mPackageName:Ljava/lang/String;

    .line 1923
    .local v3, packageName:Ljava/lang/String;
    iget-object v4, p0, Landroid/app/ActivityThread;->mBackupAgents:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/backup/BackupAgent;

    .line 1924
    .local v0, agent:Landroid/app/backup/BackupAgent;
    if-eqz v0, :cond_0

    .line 1926
    :try_start_0
    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1931
    :goto_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mBackupAgents:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1935
    :goto_1
    return-void

    .line 1927
    :catch_0
    move-exception v1

    .line 1928
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown in onDestroy by backup agent of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1933
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const-string v4, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to destroy unknown backup agent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleDumpService(Landroid/app/ActivityThread$DumpServiceInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 2039
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/app/ActivityThread$DumpServiceInfo;->service:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Service;

    .line 2040
    .local v1, s:Landroid/app/Service;
    if-eqz v1, :cond_0

    .line 2041
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p1, Landroid/app/ActivityThread$DumpServiceInfo;->fd:Ljava/io/FileDescriptor;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2042
    .local v0, pw:Ljava/io/PrintWriter;
    iget-object v2, p1, Landroid/app/ActivityThread$DumpServiceInfo;->fd:Ljava/io/FileDescriptor;

    iget-object v3, p1, Landroid/app/ActivityThread$DumpServiceInfo;->args:[Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2043
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2046
    .end local v0           #pw:Ljava/io/PrintWriter;
    :cond_0
    monitor-enter p1

    .line 2047
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p1, Landroid/app/ActivityThread$DumpServiceInfo;->dumped:Z

    .line 2048
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 2049
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2051
    return-void

    .line 2046
    .end local v1           #s:Landroid/app/Service;
    :catchall_0
    move-exception v2

    monitor-enter p1

    .line 2047
    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, p1, Landroid/app/ActivityThread$DumpServiceInfo;->dumped:Z

    .line 2048
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 2049
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2046
    throw v2

    .line 2049
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .restart local v1       #s:Landroid/app/Service;
    :catchall_2
    move-exception v2

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2
.end method

.method private final handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V
    .locals 7
    .parameter "r"
    .parameter "customIntent"

    .prologue
    const/4 v5, 0x0

    .line 1671
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 1675
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    .line 1677
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 1678
    new-instance v3, Landroid/content/res/Configuration;

    iget-object v4, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v3, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 1679
    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 1680
    .local v2, oldState:Landroid/os/Bundle;
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-boolean v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    invoke-virtual {p0, v3, v5, v4}, Landroid/app/ActivityThread;->handleResumeActivity(Landroid/os/IBinder;ZZ)V

    .line 1682
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mFinished:Z

    if-nez v3, :cond_1

    iget-boolean v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    if-eqz v3, :cond_1

    .line 1693
    :try_start_0
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/app/Activity;->mCalled:Z

    .line 1694
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 1697
    iput-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 1698
    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_0

    .line 1699
    new-instance v3, Landroid/app/SuperNotCalledException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " did not call through to super.onPause()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/app/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1704
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1705
    .local v1, e:Landroid/app/SuperNotCalledException;
    throw v1

    .line 1707
    .end local v1           #e:Landroid/app/SuperNotCalledException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 1708
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1709
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to pause activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1715
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 1726
    .end local v2           #oldState:Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    .line 1721
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 1723
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method private final handleNewIntent(Landroid/app/ActivityThread$NewIntentData;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 1754
    iget-object v0, p1, Landroid/app/ActivityThread$NewIntentData;->token:Landroid/os/IBinder;

    iget-object v1, p1, Landroid/app/ActivityThread$NewIntentData;->intents:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityThread;->performNewIntents(Landroid/os/IBinder;Ljava/util/List;)V

    .line 1755
    return-void
.end method

.method private final handlePauseActivity(Landroid/os/IBinder;ZZI)V
    .locals 4
    .parameter "token"
    .parameter "finished"
    .parameter "userLeaving"
    .parameter "configChanges"

    .prologue
    .line 2304
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2305
    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_1

    .line 2307
    if-eqz p3, :cond_0

    .line 2308
    invoke-virtual {p0, v0}, Landroid/app/ActivityThread;->performUserLeavingActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 2311
    :cond_0
    iget-object v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v3, p4

    iput v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 2312
    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v2}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/os/IBinder;ZZ)Landroid/os/Bundle;

    move-result-object v1

    .line 2315
    .local v1, state:Landroid/os/Bundle;
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 2319
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Landroid/app/IActivityManager;->activityPaused(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2323
    .end local v1           #state:Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    .line 2320
    .restart local v1       #state:Landroid/os/Bundle;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private final handleReceiver(Landroid/app/ActivityThread$ReceiverData;)V
    .locals 14
    .parameter "data"

    .prologue
    .line 1760
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 1762
    iget-object v1, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 1764
    .local v8, component:Ljava/lang/String;
    iget-object v1, p1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v1}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;

    move-result-object v11

    .line 1767
    .local v11, packageInfo:Landroid/app/LoadedApk;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1769
    .local v0, mgr:Landroid/app/IActivityManager;
    const/4 v12, 0x0

    .line 1771
    .local v12, receiver:Landroid/content/BroadcastReceiver;
    :try_start_0
    invoke-virtual {v11}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 1772
    .local v7, cl:Ljava/lang/ClassLoader;
    iget-object v1, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 1773
    iget-object v1, p1, Landroid/app/ActivityThread$ReceiverData;->resultExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 1774
    iget-object v1, p1, Landroid/app/ActivityThread$ReceiverData;->resultExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1776
    :cond_0
    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v12

    .end local v12           #receiver:Landroid/content/BroadcastReceiver;
    check-cast v12, Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1791
    .restart local v12       #receiver:Landroid/content/BroadcastReceiver;
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v11, v1, v2}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v6

    .line 1801
    .local v6, app:Landroid/app/Application;
    invoke-virtual {v6}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Landroid/app/ContextImpl;

    .line 1802
    .local v9, context:Landroid/app/ContextImpl;
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/content/BroadcastReceiver;->setOrderedHint(Z)V

    .line 1803
    iget v1, p1, Landroid/app/ActivityThread$ReceiverData;->resultCode:I

    iget-object v2, p1, Landroid/app/ActivityThread$ReceiverData;->resultData:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/ActivityThread$ReceiverData;->resultExtras:Landroid/os/Bundle;

    invoke-virtual {v12, v1, v2, v3}, Landroid/content/BroadcastReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1805
    iget-boolean v1, p1, Landroid/app/ActivityThread$ReceiverData;->sync:Z

    invoke-virtual {v12, v1}, Landroid/content/BroadcastReceiver;->setOrderedHint(Z)V

    .line 1806
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    iget-object v2, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1810
    iget-object v1, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    const-string/jumbo v2, "time-zone"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1811
    .local v13, timeZone:Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 1812
    invoke-static {v13}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1815
    .end local v13           #timeZone:Ljava/lang/String;
    :cond_1
    invoke-virtual {v9}, Landroid/app/ContextImpl;->getReceiverRestrictedContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$ReceiverData;->intent:Landroid/content/Intent;

    invoke-virtual {v12, v1, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1832
    .end local v6           #app:Landroid/app/Application;
    .end local v9           #context:Landroid/app/ContextImpl;
    :cond_2
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V

    .line 1835
    :try_start_2
    iget-boolean v1, p1, Landroid/app/ActivityThread$ReceiverData;->sync:Z

    if-eqz v1, :cond_3

    .line 1838
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v12}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v2

    invoke-virtual {v12}, Landroid/content/BroadcastReceiver;->getResultData()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/content/BroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v12}, Landroid/content/BroadcastReceiver;->getAbortBroadcast()Z

    move-result v5

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1849
    :goto_0
    return-void

    .line 1777
    .end local v7           #cl:Ljava/lang/ClassLoader;
    .end local v12           #receiver:Landroid/content/BroadcastReceiver;
    :catch_0
    move-exception v1

    move-object v10, v1

    .line 1781
    .local v10, e:Ljava/lang/Exception;
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget v2, p1, Landroid/app/ActivityThread$ReceiverData;->resultCode:I

    iget-object v3, p1, Landroid/app/ActivityThread$ReceiverData;->resultData:Ljava/lang/String;

    iget-object v4, p1, Landroid/app/ActivityThread$ReceiverData;->resultExtras:Landroid/os/Bundle;

    iget-boolean v5, p1, Landroid/app/ActivityThread$ReceiverData;->resultAbort:Z

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1785
    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to instantiate receiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1817
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v7       #cl:Ljava/lang/ClassLoader;
    .restart local v12       #receiver:Landroid/content/BroadcastReceiver;
    :catch_1
    move-exception v1

    move-object v10, v1

    .line 1821
    .restart local v10       #e:Ljava/lang/Exception;
    :try_start_4
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget v2, p1, Landroid/app/ActivityThread$ReceiverData;->resultCode:I

    iget-object v3, p1, Landroid/app/ActivityThread$ReceiverData;->resultData:Ljava/lang/String;

    iget-object v4, p1, Landroid/app/ActivityThread$ReceiverData;->resultExtras:Landroid/os/Bundle;

    iget-boolean v5, p1, Landroid/app/ActivityThread$ReceiverData;->resultAbort:Z

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1825
    :goto_2
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v1, v12, v10}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1826
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to start receiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1845
    .end local v10           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_5
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 1847
    :catch_2
    move-exception v1

    goto/16 :goto_0

    .line 1823
    .restart local v10       #e:Ljava/lang/Exception;
    :catch_3
    move-exception v1

    goto :goto_2

    .line 1783
    .end local v7           #cl:Ljava/lang/ClassLoader;
    .end local v12           #receiver:Landroid/content/BroadcastReceiver;
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private final handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;I)V
    .locals 12
    .parameter "tmp"
    .parameter "configChanges"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 2755
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 2757
    const/4 v1, 0x0

    .line 2766
    .local v1, changedConfig:Landroid/content/res/Configuration;
    iget-object v7, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v7

    .line 2767
    :try_start_0
    iget-object v8, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2768
    .local v0, N:I
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 2769
    .local v6, token:Landroid/os/IBinder;
    const/4 p1, 0x0

    .line 2770
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 2771
    iget-object v8, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2772
    .local v4, r:Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v8, v4, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    if-ne v8, v6, :cond_0

    .line 2773
    move-object p1, v4

    .line 2774
    iget-object v8, p0, Landroid/app/ActivityThread;->mRelaunchingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2775
    add-int/lit8 v3, v3, -0x1

    .line 2776
    add-int/lit8 v0, v0, -0x1

    .line 2770
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2780
    .end local v4           #r:Landroid/app/ActivityThread$ActivityClientRecord;
    :cond_1
    if-nez p1, :cond_3

    .line 2782
    monitor-exit v7

    .line 2854
    :cond_2
    :goto_1
    return-void

    .line 2785
    :cond_3
    iget-object v8, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v8, :cond_4

    .line 2786
    iget-object v1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 2787
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 2789
    :cond_4
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2791
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    if-eqz v7, :cond_7

    .line 2795
    iget-object v7, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v7, :cond_5

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    iget-object v8, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v7, v8}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    invoke-virtual {v7, v8}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v7

    if-eqz v7, :cond_7

    .line 2798
    :cond_5
    if-eqz v1, :cond_6

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    invoke-virtual {v7, v1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2800
    :cond_6
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->createdConfig:Landroid/content/res/Configuration;

    .line 2809
    :cond_7
    if-eqz v1, :cond_8

    .line 2810
    invoke-virtual {p0, v1}, Landroid/app/ActivityThread;->handleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2813
    :cond_8
    iget-object v7, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2815
    .restart local v4       #r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v4, :cond_2

    .line 2819
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v8, v7, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v8, p2

    iput v8, v7, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 2820
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, v7, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 2822
    .local v2, currentIntent:Landroid/content/Intent;
    const/4 v5, 0x0

    .line 2823
    .local v5, savedState:Landroid/os/Bundle;
    iget-boolean v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-nez v7, :cond_9

    .line 2824
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v7, v10, v11}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/os/IBinder;ZZ)Landroid/os/Bundle;

    move-result-object v5

    .line 2827
    :cond_9
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    invoke-direct {p0, v7, v10, p2, v11}, Landroid/app/ActivityThread;->handleDestroyActivity(Landroid/os/IBinder;ZIZ)V

    .line 2829
    iput-object v9, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 2830
    iput-object v9, v4, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 2831
    iput-boolean v10, v4, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 2832
    iput-object v9, v4, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2834
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-eqz v7, :cond_a

    .line 2835
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-nez v7, :cond_d

    .line 2836
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    iput-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 2841
    :cond_a
    :goto_2
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-eqz v7, :cond_b

    .line 2842
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-nez v7, :cond_e

    .line 2843
    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    iput-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 2848
    :cond_b
    :goto_3
    iget-boolean v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    iput-boolean v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 2849
    if-eqz v5, :cond_c

    .line 2850
    iput-object v5, v4, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 2853
    :cond_c
    invoke-direct {p0, v4, v2}, Landroid/app/ActivityThread;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2789
    .end local v0           #N:I
    .end local v2           #currentIntent:Landroid/content/Intent;
    .end local v3           #i:I
    .end local v4           #r:Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v5           #savedState:Landroid/os/Bundle;
    .end local v6           #token:Landroid/os/IBinder;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 2838
    .restart local v0       #N:I
    .restart local v2       #currentIntent:Landroid/content/Intent;
    .restart local v3       #i:I
    .restart local v4       #r:Landroid/app/ActivityThread$ActivityClientRecord;
    .restart local v5       #savedState:Landroid/os/Bundle;
    .restart local v6       #token:Landroid/os/IBinder;
    :cond_d
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 2845
    :cond_e
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3
.end method

.method private final handleRequestThumbnail(Landroid/os/IBinder;)V
    .locals 7
    .parameter "token"

    .prologue
    .line 2857
    iget-object v4, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2858
    .local v2, r:Landroid/app/ActivityThread$ActivityClientRecord;
    invoke-direct {p0, v2}, Landroid/app/ActivityThread;->createThumbnailBitmap(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2859
    .local v3, thumbnail:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 2861
    .local v0, description:Ljava/lang/CharSequence;
    :try_start_0
    iget-object v4, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2872
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, p1, v3, v0}, Landroid/app/IActivityManager;->reportThumbnail(Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2876
    :goto_0
    return-void

    .line 2862
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 2863
    .local v1, e:Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v5, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2864
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create description of activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 2874
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private final handleSendResult(Landroid/app/ActivityThread$ResultData;)V
    .locals 7
    .parameter "res"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2563
    iget-object v3, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/app/ActivityThread$ResultData;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2565
    .local v1, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v1, :cond_3

    .line 2566
    iget-boolean v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-nez v3, :cond_1

    move v2, v6

    .line 2567
    .local v2, resumed:Z
    :goto_0
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mFinished:Z

    if-nez v3, :cond_0

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v3, v3, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-boolean v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 2572
    invoke-direct {p0, v1, v6}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 2574
    :cond_0
    if-eqz v2, :cond_2

    .line 2577
    :try_start_0
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/app/Activity;->mCalled:Z

    .line 2578
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 2579
    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v3, v3, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_2

    .line 2580
    new-instance v3, Landroid/app/SuperNotCalledException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " did not call through to super.onPause()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/app/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2584
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 2585
    .local v0, e:Landroid/app/SuperNotCalledException;
    throw v0

    .end local v0           #e:Landroid/app/SuperNotCalledException;
    .end local v2           #resumed:Z
    :cond_1
    move v2, v5

    .line 2566
    goto :goto_0

    .line 2586
    .restart local v2       #resumed:Z
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 2587
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2588
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to pause activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2595
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    iget-object v3, p1, Landroid/app/ActivityThread$ResultData;->results:Ljava/util/List;

    invoke-direct {p0, v1, v3}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 2596
    if-eqz v2, :cond_3

    .line 2597
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    .line 2600
    .end local v2           #resumed:Z
    :cond_3
    return-void
.end method

.method private final handleServiceArgs(Landroid/app/ActivityThread$ServiceArgsData;)V
    .locals 7
    .parameter "data"

    .prologue
    .line 2054
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Service;

    .line 2055
    .local v2, s:Landroid/app/Service;
    if-eqz v2, :cond_1

    .line 2057
    :try_start_0
    iget-object v3, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 2058
    iget-object v3, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 2060
    :cond_0
    iget-object v3, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    iget v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    iget v5, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    .line 2062
    .local v1, res:I
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2065
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    const/4 v5, 0x1

    iget v6, p1, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    invoke-interface {v3, v4, v5, v6, v1}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2070
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Landroid/app/ActivityThread;->ensureJitEnabled()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2079
    .end local v1           #res:I
    :cond_1
    return-void

    .line 2071
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 2072
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2073
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to start service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 2067
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #res:I
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private final handleStopActivity(Landroid/os/IBinder;ZI)V
    .locals 6
    .parameter "token"
    .parameter "show"
    .parameter "configChanges"

    .prologue
    .line 2492
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2493
    .local v1, r:Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v3, p3

    iput v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 2495
    new-instance v0, Landroid/app/ActivityThread$StopInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/app/ActivityThread$StopInfo;-><init>(Landroid/app/ActivityThread$1;)V

    .line 2496
    .local v0, info:Landroid/app/ActivityThread$StopInfo;
    invoke-direct {p0, v1, v0, p2}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;Z)V

    .line 2502
    invoke-direct {p0, v1, p2}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 2506
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v4, v0, Landroid/app/ActivityThread$StopInfo;->thumbnail:Landroid/graphics/Bitmap;

    iget-object v5, v0, Landroid/app/ActivityThread$StopInfo;->description:Ljava/lang/CharSequence;

    invoke-interface {v2, v3, v4, v5}, Landroid/app/IActivityManager;->activityStopped(Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2510
    :goto_0
    return-void

    .line 2508
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private final handleStopService(Landroid/os/IBinder;)V
    .locals 8
    .parameter "token"

    .prologue
    .line 2082
    iget-object v4, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Service;

    .line 2083
    .local v2, s:Landroid/app/Service;
    if-eqz v2, :cond_1

    .line 2086
    :try_start_0
    invoke-virtual {v2}, Landroid/app/Service;->onDestroy()V

    .line 2087
    invoke-virtual {v2}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 2088
    .local v0, context:Landroid/content/Context;
    instance-of v4, v0, Landroid/app/ContextImpl;

    if-eqz v4, :cond_0

    .line 2089
    invoke-virtual {v2}, Landroid/app/Service;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 2090
    .local v3, who:Ljava/lang/String;
    check-cast v0, Landroid/app/ContextImpl;

    .end local v0           #context:Landroid/content/Context;
    const-string v4, "Service"

    invoke-virtual {v0, v3, v4}, Landroid/app/ContextImpl;->scheduleFinalCleanup(Ljava/lang/String;Ljava/lang/String;)V

    .line 2093
    .end local v3           #who:Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/app/QueuedWork;->waitToFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2096
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v4, p1, v5, v6, v7}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2110
    :cond_1
    :goto_0
    return-void

    .line 2101
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 2102
    .local v1, e:Ljava/lang/Exception;
    iget-object v4, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v4, v2, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2103
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to stop service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 2098
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private final handleUnbindService(Landroid/app/ActivityThread$BindServiceData;)V
    .locals 8
    .parameter "data"

    .prologue
    .line 2012
    iget-object v3, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Service;

    .line 2013
    .local v2, s:Landroid/app/Service;
    if-eqz v2, :cond_0

    .line 2015
    :try_start_0
    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 2016
    iget-object v3, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 2018
    .local v0, doRebind:Z
    if-eqz v0, :cond_1

    .line 2019
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-interface {v3, v4, v5, v0}, Landroid/app/IActivityManager;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 2035
    .end local v0           #doRebind:Z
    :cond_0
    :goto_0
    return-void

    .line 2022
    .restart local v0       #doRebind:Z
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p1, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/app/IActivityManager;->serviceDoneExecuting(Landroid/os/IBinder;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2025
    :catch_0
    move-exception v3

    goto :goto_0

    .line 2027
    .end local v0           #doRebind:Z
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 2028
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, v2, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2029
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to unbind to service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private final handleWindowVisibility(Landroid/os/IBinder;Z)V
    .locals 2
    .parameter "token"
    .parameter "show"

    .prologue
    .line 2521
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2522
    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez p2, :cond_2

    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-nez v1, :cond_2

    .line 2523
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;Z)V

    .line 2532
    :cond_0
    :goto_0
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v1, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 2535
    invoke-direct {p0, v0, p2}, Landroid/app/ActivityThread;->updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 2537
    :cond_1
    return-void

    .line 2524
    :cond_2
    if-eqz p2, :cond_0

    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v1, :cond_0

    .line 2527
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 2529
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->performRestart()V

    .line 2530
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    goto :goto_0
.end method

.method private final installContentProviders(Landroid/content/Context;Ljava/util/List;)V
    .locals 11
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3315
    .local p2, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3318
    .local v5, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 3319
    .local v4, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ProviderInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3320
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ProviderInfo;

    .line 3321
    .local v3, cpi:Landroid/content/pm/ProviderInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3322
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v6, "Pub "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3323
    iget-object v6, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3324
    const-string v6, ": "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3325
    iget-object v6, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3326
    const-string v6, "ActivityThread"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, p1, v6, v3, v7}, Landroid/app/ActivityThread;->installProvider(Landroid/content/Context;Landroid/content/IContentProvider;Landroid/content/pm/ProviderInfo;Z)Landroid/content/IContentProvider;

    move-result-object v1

    .line 3328
    .local v1, cp:Landroid/content/IContentProvider;
    if-eqz v1, :cond_0

    .line 3329
    new-instance v2, Landroid/app/IActivityManager$ContentProviderHolder;

    invoke-direct {v2, v3}, Landroid/app/IActivityManager$ContentProviderHolder;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 3331
    .local v2, cph:Landroid/app/IActivityManager$ContentProviderHolder;
    iput-object v1, v2, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 3332
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3334
    iget-object v6, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 3335
    :try_start_0
    iget-object v7, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-interface {v1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    new-instance v9, Landroid/app/ActivityThread$ProviderRefCount;

    const/16 v10, 0x2710

    invoke-direct {v9, p0, v10}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ActivityThread;I)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3336
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 3341
    .end local v0           #buf:Ljava/lang/StringBuilder;
    .end local v1           #cp:Landroid/content/IContentProvider;
    .end local v2           #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v3           #cpi:Landroid/content/pm/ProviderInfo;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Landroid/app/IActivityManager;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3345
    :goto_1
    return-void

    .line 3343
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private final installProvider(Landroid/content/Context;Landroid/content/IContentProvider;Landroid/content/pm/ProviderInfo;Z)Landroid/content/IContentProvider;
    .locals 18
    .parameter "context"
    .parameter "provider"
    .parameter "info"
    .parameter "noisy"

    .prologue
    .line 3531
    const/4 v10, 0x0

    .line 3532
    .local v10, localProvider:Landroid/content/ContentProvider;
    if-nez p2, :cond_5

    .line 3533
    if-eqz p4, :cond_0

    .line 3534
    const-string v13, "ActivityThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Loading provider "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3537
    :cond_0
    const/4 v6, 0x0

    .line 3538
    .local v6, c:Landroid/content/Context;
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    .line 3539
    .local v5, ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 3540
    move-object/from16 v6, p1

    .line 3551
    :goto_0
    if-nez v6, :cond_3

    .line 3552
    const-string v13, "ActivityThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to get context for package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " while loading content provider "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3556
    const/4 v13, 0x0

    .line 3605
    .end local v5           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v6           #c:Landroid/content/Context;
    :goto_1
    return-object v13

    .line 3541
    .restart local v5       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v6       #c:Landroid/content/Context;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    move-object v13, v0

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 3543
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    move-object v6, v0

    goto :goto_0

    .line 3546
    :cond_2
    :try_start_0
    iget-object v13, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v14, 0x1

    move-object/from16 v0, p1

    move-object v1, v13

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    goto :goto_0

    .line 3559
    :cond_3
    :try_start_1
    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 3560
    .local v7, cl:Ljava/lang/ClassLoader;
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object v13, v0

    invoke-virtual {v7, v13}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Landroid/content/ContentProvider;

    move-object v10, v0

    .line 3562
    invoke-virtual {v10}, Landroid/content/ContentProvider;->getIContentProvider()Landroid/content/IContentProvider;

    move-result-object p2

    .line 3563
    if-nez p2, :cond_4

    .line 3564
    const-string v13, "ActivityThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to instantiate class "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " from sourceDir "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v15, v0

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3567
    const/4 v13, 0x0

    goto :goto_1

    .line 3572
    :cond_4
    move-object v0, v10

    move-object v1, v6

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3586
    .end local v5           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v6           #c:Landroid/content/Context;
    .end local v7           #cl:Ljava/lang/ClassLoader;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    move-object v13, v0

    monitor-enter v13

    .line 3588
    :try_start_2
    sget-object v14, Landroid/app/ActivityThread;->PATTERN_SEMICOLON:Ljava/util/regex/Pattern;

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v11

    .line 3589
    .local v11, names:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    array-length v14, v11

    if-ge v9, v14, :cond_7

    .line 3590
    new-instance v12, Landroid/app/ActivityThread$ProviderClientRecord;

    aget-object v14, v11, v9

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/ActivityThread$ProviderClientRecord;-><init>(Landroid/app/ActivityThread;Ljava/lang/String;Landroid/content/IContentProvider;Landroid/content/ContentProvider;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3593
    .local v12, pr:Landroid/app/ActivityThread$ProviderClientRecord;
    :try_start_3
    invoke-interface/range {p2 .. p2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v12, v15}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 3594
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    move-object v14, v0

    aget-object v15, v11, v9

    invoke-virtual {v14, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 3589
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 3573
    .end local v9           #i:I
    .end local v11           #names:[Ljava/lang/String;
    .end local v12           #pr:Landroid/app/ActivityThread$ProviderClientRecord;
    .restart local v5       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v6       #c:Landroid/content/Context;
    :catch_0
    move-exception v13

    move-object v8, v13

    .line 3574
    .local v8, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v8}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 3575
    new-instance v13, Ljava/lang/RuntimeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to get provider "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 3579
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 3595
    .end local v5           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v6           #c:Landroid/content/Context;
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v9       #i:I
    .restart local v11       #names:[Ljava/lang/String;
    .restart local v12       #pr:Landroid/app/ActivityThread$ProviderClientRecord;
    :catch_1
    move-exception v14

    move-object v8, v14

    .line 3596
    .local v8, e:Landroid/os/RemoteException;
    const/4 v14, 0x0

    :try_start_4
    monitor-exit v13

    move-object v13, v14

    goto/16 :goto_1

    .line 3599
    .end local v8           #e:Landroid/os/RemoteException;
    .end local v12           #pr:Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_7
    if-eqz v10, :cond_8

    .line 3600
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mLocalProviders:Ljava/util/HashMap;

    move-object v14, v0

    invoke-interface/range {p2 .. p2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v15

    new-instance v16, Landroid/app/ActivityThread$ProviderClientRecord;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move-object v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/ActivityThread$ProviderClientRecord;-><init>(Landroid/app/ActivityThread;Ljava/lang/String;Landroid/content/IContentProvider;Landroid/content/ContentProvider;)V

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3603
    :cond_8
    monitor-exit v13

    move-object/from16 v13, p2

    .line 3605
    goto/16 :goto_1

    .line 3603
    .end local v9           #i:I
    .end local v11           #names:[Ljava/lang/String;
    :catchall_0
    move-exception v14

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v14

    .line 3548
    .restart local v5       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v6       #c:Landroid/content/Context;
    :catch_2
    move-exception v13

    goto/16 :goto_0
.end method

.method public static final main([Ljava/lang/String;)V
    .locals 5
    .parameter "args"

    .prologue
    .line 3684
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 3686
    const-string v2, "<pre-initialized>"

    invoke-static {v2}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 3688
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 3689
    sget-object v2, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 3690
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    sput-object v2, Landroid/app/ActivityThread;->sMainThreadHandler:Landroid/os/Handler;

    .line 3693
    :cond_0
    new-instance v1, Landroid/app/ActivityThread;

    invoke-direct {v1}, Landroid/app/ActivityThread;-><init>()V

    .line 3694
    .local v1, thread:Landroid/app/ActivityThread;
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/ActivityThread;->attach(Z)V

    .line 3701
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 3703
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3704
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Main thread loop unexpectedly exited"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3707
    :cond_1
    invoke-direct {v1}, Landroid/app/ActivityThread;->detach()V

    .line 3708
    iget-object v2, v1, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 3711
    .local v0, name:Ljava/lang/String;
    :goto_0
    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Main thread of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is now exiting"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3712
    return-void

    .line 3708
    .end local v0           #name:Ljava/lang/String;
    :cond_2
    const-string v2, "<unknown>"

    move-object v0, v2

    goto :goto_0
.end method

.method private final performConfigurationChanged(Landroid/content/ComponentCallbacks;Landroid/content/res/Configuration;)V
    .locals 7
    .parameter "cb"
    .parameter "config"

    .prologue
    const/4 v5, 0x0

    .line 2934
    instance-of v4, p1, Landroid/app/Activity;

    if-eqz v4, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v4, v0

    move-object v1, v4

    .line 2935
    .local v1, activity:Landroid/app/Activity;
    :goto_0
    if-eqz v1, :cond_0

    .line 2936
    iput-boolean v5, v1, Landroid/app/Activity;->mCalled:Z

    .line 2939
    :cond_0
    const/4 v3, 0x0

    .line 2940
    .local v3, shouldChangeConfig:Z
    if-eqz v1, :cond_1

    iget-object v4, v1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    if-nez v4, :cond_4

    .line 2941
    :cond_1
    const/4 v3, 0x1

    .line 2961
    :cond_2
    :goto_1
    if-eqz v3, :cond_6

    .line 2962
    invoke-interface {p1, p2}, Landroid/content/ComponentCallbacks;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2964
    if-eqz v1, :cond_6

    .line 2965
    iget-boolean v4, v1, Landroid/app/Activity;->mCalled:Z

    if-nez v4, :cond_5

    .line 2966
    new-instance v4, Landroid/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onConfigurationChanged()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2934
    .end local v1           #activity:Landroid/app/Activity;
    .end local v3           #shouldChangeConfig:Z
    :cond_3
    const/4 v4, 0x0

    move-object v1, v4

    goto :goto_0

    .line 2947
    .restart local v1       #activity:Landroid/app/Activity;
    .restart local v3       #shouldChangeConfig:Z
    :cond_4
    iget-object v4, v1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-virtual {v4, p2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    .line 2948
    .local v2, diff:I
    if-eqz v2, :cond_2

    .line 2953
    iget-object v4, v1, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v4, v2

    if-nez v4, :cond_2

    .line 2954
    const/4 v3, 0x1

    goto :goto_1

    .line 2970
    .end local v2           #diff:I
    :cond_5
    iput v5, v1, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 2971
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4, p2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v4, v1, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 2974
    :cond_6
    return-void
.end method

.method private final performDestroyActivity(Landroid/os/IBinder;ZIZ)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 7
    .parameter "token"
    .parameter "finishing"
    .parameter "configChanges"
    .parameter "getNonConfigInstance"

    .prologue
    const/4 v6, 0x1

    const-string v2, "Activity "

    const-string v5, ": "

    .line 2608
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2610
    .local v1, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v1, :cond_8

    .line 2611
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    or-int/2addr v3, p3

    iput v3, v2, Landroid/app/Activity;->mConfigChangeFlags:I

    .line 2612
    if-eqz p2, :cond_0

    .line 2613
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v6, v2, Landroid/app/Activity;->mFinished:Z

    .line 2615
    :cond_0
    iget-boolean v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-nez v2, :cond_2

    .line 2617
    :try_start_0
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/app/Activity;->mCalled:Z

    .line 2618
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 2619
    const/16 v2, 0x7545

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2621
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mCalled:Z

    if-nez v2, :cond_1

    .line 2622
    new-instance v2, Landroid/app/SuperNotCalledException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v4}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " did not call through to super.onPause()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/app/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2626
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 2627
    .local v0, e:Landroid/app/SuperNotCalledException;
    throw v0

    .line 2628
    .end local v0           #e:Landroid/app/SuperNotCalledException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 2629
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2630
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to pause activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v4}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2636
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iput-boolean v6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 2638
    :cond_2
    iget-boolean v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-nez v2, :cond_4

    .line 2640
    :try_start_1
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->performStop()V
    :try_end_1
    .catch Landroid/app/SuperNotCalledException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 2651
    :cond_3
    iput-boolean v6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 2653
    :cond_4
    if-eqz p4, :cond_6

    .line 2655
    :try_start_2
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstance:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 2666
    :cond_5
    :try_start_3
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->onRetainNonConfigurationChildInstances()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationChildInstances:Ljava/util/HashMap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 2679
    :cond_6
    :try_start_4
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/app/Activity;->mCalled:Z

    .line 2680
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->onDestroy()V

    .line 2681
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mCalled:Z

    if-nez v2, :cond_7

    .line 2682
    new-instance v2, Landroid/app/SuperNotCalledException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v4}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " did not call through to super.onDestroy()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Landroid/app/SuperNotCalledException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .line 2689
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 2690
    .local v0, e:Landroid/app/SuperNotCalledException;
    throw v0

    .line 2641
    .end local v0           #e:Landroid/app/SuperNotCalledException;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 2642
    .restart local v0       #e:Landroid/app/SuperNotCalledException;
    throw v0

    .line 2643
    .end local v0           #e:Landroid/app/SuperNotCalledException;
    :catch_4
    move-exception v2

    move-object v0, v2

    .line 2644
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2645
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to stop activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v4}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2657
    .end local v0           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v2

    move-object v0, v2

    .line 2658
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2659
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retain activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2668
    .end local v0           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v2

    move-object v0, v2

    .line 2669
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2670
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retain child activities "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v4}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2686
    .end local v0           #e:Ljava/lang/Exception;
    :cond_7
    :try_start_5
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-eqz v2, :cond_8

    .line 2687
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->closeAllPanels()V
    :try_end_5
    .catch Landroid/app/SuperNotCalledException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 2699
    :cond_8
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2701
    return-object v1

    .line 2691
    :catch_7
    move-exception v2

    move-object v0, v2

    .line 2692
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2693
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to destroy activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-static {v4}, Landroid/app/ActivityThread;->safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private final performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 24
    .parameter "r"
    .parameter "customIntent"

    .prologue
    .line 1552
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    .line 1553
    .local v19, aInfo:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    move-object v6, v0

    if-nez v6, :cond_0

    .line 1554
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;I)Landroid/app/LoadedApk;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 1558
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    .line 1559
    .local v21, component:Landroid/content/ComponentName;
    if-nez v21, :cond_1

    .line 1560
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v21

    .line 1562
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1565
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 1566
    new-instance v21, Landroid/content/ComponentName;

    .end local v21           #component:Landroid/content/ComponentName;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object v1, v6

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    .restart local v21       #component:Landroid/content/ComponentName;
    :cond_2
    const/4 v4, 0x0

    .line 1572
    .local v4, activity:Landroid/app/Activity;
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v20

    .line 1573
    .local v20, cl:Ljava/lang/ClassLoader;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v6, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object v8, v0

    move-object v0, v6

    move-object/from16 v1, v20

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v4

    .line 1575
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 1576
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    move-object v6, v0

    if-eqz v6, :cond_3

    .line 1577
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1588
    .end local v20           #cl:Ljava/lang/ClassLoader;
    :cond_3
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v8, v0

    invoke-virtual {v6, v7, v8}, Landroid/app/LoadedApk;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v10

    .line 1598
    .local v10, app:Landroid/app/Application;
    if-eqz v4, :cond_9

    .line 1599
    new-instance v5, Landroid/app/ContextImpl;

    invoke-direct {v5}, Landroid/app/ContextImpl;-><init>()V

    .line 1600
    .local v5, appContext:Landroid/app/ContextImpl;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    move-object v7, v0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 1601
    invoke-virtual {v5, v4}, Landroid/app/ContextImpl;->setOuterContext(Landroid/content/Context;)V

    .line 1602
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    invoke-virtual {v5}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 1603
    .local v13, title:Ljava/lang/CharSequence;
    new-instance v18, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1606
    .local v18, config:Landroid/content/res/Configuration;
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    move-object v8, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    move v9, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object v11, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v12, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    move-object v14, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;

    move-object v15, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstance:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationChildInstances:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v6, p0

    invoke-virtual/range {v4 .. v18}, Landroid/app/Activity;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Ljava/util/HashMap;Landroid/content/res/Configuration;)V

    .line 1611
    if-eqz p2, :cond_4

    .line 1612
    move-object/from16 v0, p2

    move-object v1, v4

    iput-object v0, v1, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 1614
    :cond_4
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstance:Ljava/lang/Object;

    .line 1615
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationChildInstances:Ljava/util/HashMap;

    .line 1616
    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/app/Activity;->mStartedActivity:Z

    .line 1617
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v23

    .line 1618
    .local v23, theme:I
    if-eqz v23, :cond_5

    .line 1619
    move-object v0, v4

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTheme(I)V

    .line 1622
    :cond_5
    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/app/Activity;->mCalled:Z

    .line 1623
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    move-object v7, v0

    invoke-virtual {v6, v4, v7}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1624
    iget-boolean v6, v4, Landroid/app/Activity;->mCalled:Z

    if-nez v6, :cond_6

    .line 1625
    new-instance v6, Landroid/app/SuperNotCalledException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " did not call through to super.onCreate()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Landroid/app/SuperNotCalledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1654
    .end local v5           #appContext:Landroid/app/ContextImpl;
    .end local v10           #app:Landroid/app/Application;
    .end local v13           #title:Ljava/lang/CharSequence;
    .end local v18           #config:Landroid/content/res/Configuration;
    .end local v23           #theme:I
    :catch_0
    move-exception v6

    move-object/from16 v22, v6

    .line 1655
    .local v22, e:Landroid/app/SuperNotCalledException;
    throw v22

    .line 1579
    .end local v22           #e:Landroid/app/SuperNotCalledException;
    :catch_1
    move-exception v6

    move-object/from16 v22, v6

    .line 1580
    .local v22, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v4

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1581
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to instantiate activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1629
    .end local v22           #e:Ljava/lang/Exception;
    .restart local v5       #appContext:Landroid/app/ContextImpl;
    .restart local v10       #app:Landroid/app/Application;
    .restart local v13       #title:Ljava/lang/CharSequence;
    .restart local v18       #config:Landroid/content/res/Configuration;
    .restart local v23       #theme:I
    :cond_6
    :try_start_2
    move-object v0, v4

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 1630
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p1

    iput-boolean v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 1631
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    move-object v6, v0

    iget-boolean v6, v6, Landroid/app/Activity;->mFinished:Z

    if-nez v6, :cond_7

    .line 1632
    invoke-virtual {v4}, Landroid/app/Activity;->performStart()V

    .line 1633
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p1

    iput-boolean v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 1635
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    move-object v6, v0

    iget-boolean v6, v6, Landroid/app/Activity;->mFinished:Z

    if-nez v6, :cond_8

    .line 1636
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    move-object v6, v0

    if-eqz v6, :cond_8

    .line 1637
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    move-object v7, v0

    invoke-virtual {v6, v4, v7}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1640
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    move-object v6, v0

    iget-boolean v6, v6, Landroid/app/Activity;->mFinished:Z

    if-nez v6, :cond_9

    .line 1641
    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/app/Activity;->mCalled:Z

    .line 1642
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    move-object v7, v0

    invoke-virtual {v6, v4, v7}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1643
    iget-boolean v6, v4, Landroid/app/Activity;->mCalled:Z

    if-nez v6, :cond_9

    .line 1644
    new-instance v6, Landroid/app/SuperNotCalledException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " did not call through to super.onPostCreate()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Landroid/app/SuperNotCalledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1657
    .end local v5           #appContext:Landroid/app/ContextImpl;
    .end local v10           #app:Landroid/app/Application;
    .end local v13           #title:Ljava/lang/CharSequence;
    .end local v18           #config:Landroid/content/res/Configuration;
    .end local v23           #theme:I
    :catch_2
    move-exception v6

    move-object/from16 v22, v6

    .line 1658
    .restart local v22       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v4

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1659
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to start activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1650
    .end local v22           #e:Ljava/lang/Exception;
    .restart local v10       #app:Landroid/app/Application;
    :cond_9
    const/4 v6, 0x1

    :try_start_3
    move v0, v6

    move-object/from16 v1, p1

    iput-boolean v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 1652
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    move-object v7, v0

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/app/SuperNotCalledException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1665
    .end local v10           #app:Landroid/app/Application;
    :cond_a
    return-object v4
.end method

.method private final performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;Z)V
    .locals 5
    .parameter "r"
    .parameter "info"
    .parameter "keepShown"

    .prologue
    const/4 v3, 0x1

    const-string v4, ": "

    .line 2416
    if-eqz p1, :cond_0

    .line 2417
    if-nez p3, :cond_2

    iget-boolean v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v1, :cond_2

    .line 2418
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mFinished:Z

    if-eqz v1, :cond_1

    .line 2462
    :cond_0
    :goto_0
    return-void

    .line 2424
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Performing stop of activity that is not resumed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2427
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "ActivityThread"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2430
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_2
    if-eqz p2, :cond_3

    .line 2433
    :try_start_0
    invoke-direct {p0, p1}, Landroid/app/ActivityThread;->createThumbnailBitmap(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p2, Landroid/app/ActivityThread$StopInfo;->thumbnail:Landroid/graphics/Bitmap;

    .line 2434
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p2, Landroid/app/ActivityThread$StopInfo;->description:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2445
    :cond_3
    if-nez p3, :cond_5

    .line 2448
    :try_start_1
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->performStop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2457
    :cond_4
    iput-boolean v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 2460
    :cond_5
    iput-boolean v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    goto :goto_0

    .line 2435
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2436
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2437
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save state of activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2449
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 2450
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v1, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2451
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to stop activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final queueOrSendMessage(ILjava/lang/Object;)V
    .locals 1
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v0, 0x0

    .line 1519
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V

    .line 1520
    return-void
.end method

.method private final queueOrSendMessage(ILjava/lang/Object;I)V
    .locals 1
    .parameter "what"
    .parameter "obj"
    .parameter "arg1"

    .prologue
    .line 1523
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V

    .line 1524
    return-void
.end method

.method private final queueOrSendMessage(ILjava/lang/Object;II)V
    .locals 2
    .parameter "what"
    .parameter "obj"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1527
    monitor-enter p0

    .line 1531
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1532
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1533
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1534
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 1535
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 1536
    iget-object v1, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 1537
    monitor-exit p0

    .line 1538
    return-void

    .line 1537
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static safeToComponentShortString(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    .line 2705
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2706
    .local v0, component:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    const-string v1, "[Unknown]"

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static final systemMain()Landroid/app/ActivityThread;
    .locals 2

    .prologue
    .line 3671
    new-instance v0, Landroid/app/ActivityThread;

    invoke-direct {v0}, Landroid/app/ActivityThread;-><init>()V

    .line 3672
    .local v0, thread:Landroid/app/ActivityThread;
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/app/ActivityThread;->attach(Z)V

    .line 3673
    return-object v0
.end method

.method private final updateVisibility(Landroid/app/ActivityThread$ActivityClientRecord;Z)V
    .locals 4
    .parameter "r"
    .parameter "show"

    .prologue
    const/4 v3, 0x1

    .line 2465
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v1, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 2466
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 2467
    if-eqz p2, :cond_2

    .line 2468
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    if-nez v1, :cond_0

    .line 2469
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v3, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 2470
    iget v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 2471
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v1, :cond_0

    .line 2472
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->makeVisible()V

    .line 2475
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    if-eqz v1, :cond_1

    .line 2478
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    invoke-direct {p0, v1, v2}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks;Landroid/content/res/Configuration;)V

    .line 2479
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    .line 2489
    :cond_1
    :goto_0
    return-void

    .line 2482
    :cond_2
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v1, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v1, :cond_1

    .line 2483
    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 2484
    iget v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    sub-int/2addr v1, v3

    iput v1, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 2485
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 7
    .parameter "c"
    .parameter "name"

    .prologue
    .line 3406
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->getExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 3407
    .local v2, provider:Landroid/content/IContentProvider;
    if-nez v2, :cond_0

    .line 3408
    const/4 v3, 0x0

    .line 3418
    :goto_0
    return-object v3

    .line 3409
    :cond_0
    invoke-interface {v2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3410
    .local v0, jBinder:Landroid/os/IBinder;
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3411
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ProviderRefCount;

    .line 3412
    .local v1, prc:Landroid/app/ActivityThread$ProviderRefCount;
    if-nez v1, :cond_1

    .line 3413
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    new-instance v5, Landroid/app/ActivityThread$ProviderRefCount;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v6}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ActivityThread;I)V

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3417
    :goto_1
    monitor-exit v3

    move-object v3, v2

    .line 3418
    goto :goto_0

    .line 3415
    :cond_1
    iget v4, v1, Landroid/app/ActivityThread$ProviderRefCount;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Landroid/app/ActivityThread$ProviderRefCount;->count:I

    goto :goto_1

    .line 3417
    .end local v1           #prc:Landroid/app/ActivityThread$ProviderRefCount;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public final acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 7
    .parameter "c"
    .parameter "name"

    .prologue
    .line 3390
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread;->getProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 3391
    .local v2, provider:Landroid/content/IContentProvider;
    if-nez v2, :cond_0

    .line 3392
    const/4 v3, 0x0

    .line 3402
    :goto_0
    return-object v3

    .line 3393
    :cond_0
    invoke-interface {v2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3394
    .local v0, jBinder:Landroid/os/IBinder;
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3395
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ProviderRefCount;

    .line 3396
    .local v1, prc:Landroid/app/ActivityThread$ProviderRefCount;
    if-nez v1, :cond_1

    .line 3397
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    new-instance v5, Landroid/app/ActivityThread$ProviderRefCount;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v6}, Landroid/app/ActivityThread$ProviderRefCount;-><init>(Landroid/app/ActivityThread;I)V

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3401
    :goto_1
    monitor-exit v3

    move-object v3, v2

    .line 3402
    goto :goto_0

    .line 3399
    :cond_1
    iget v4, v1, Landroid/app/ActivityThread$ProviderRefCount;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Landroid/app/ActivityThread$ProviderRefCount;->count:I

    goto :goto_1

    .line 3401
    .end local v1           #prc:Landroid/app/ActivityThread$ProviderRefCount;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method final applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;)Z
    .locals 8
    .parameter "config"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2977
    iget-object v5, p0, Landroid/app/ActivityThread;->mResConfiguration:Landroid/content/res/Configuration;

    if-nez v5, :cond_0

    .line 2978
    new-instance v5, Landroid/content/res/Configuration;

    invoke-direct {v5}, Landroid/content/res/Configuration;-><init>()V

    iput-object v5, p0, Landroid/app/ActivityThread;->mResConfiguration:Landroid/content/res/Configuration;

    .line 2980
    :cond_0
    iget-object v5, p0, Landroid/app/ActivityThread;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v6

    .line 3017
    :goto_0
    return v5

    .line 2985
    :cond_1
    iget-object v5, p0, Landroid/app/ActivityThread;->mResConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 2986
    .local v0, changes:I
    invoke-static {v0}, Landroid/app/MiuiThemeHelper;->handleExtraConfigurationChanges(I)V

    invoke-virtual {p0, v7}, Landroid/app/ActivityThread;->getDisplayMetricsLocked(Z)Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2989
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget-object v5, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v5, :cond_2

    .line 2990
    iget-object v5, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v5}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 2993
    :cond_2
    invoke-static {p1, v1}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2995
    invoke-static {}, Landroid/app/ContextImpl$ApplicationPackageManager;->configurationChanged()V

    .line 2998
    iget-object v5, p0, Landroid/app/ActivityThread;->mActiveResources:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3002
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3003
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 3004
    .local v4, v:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    .line 3005
    .local v3, r:Landroid/content/res/Resources;
    if-eqz v3, :cond_3

    .line 3008
    invoke-virtual {v3, p1, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_1

    .line 3013
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 3017
    .end local v3           #r:Landroid/content/res/Resources;
    .end local v4           #v:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_4
    if-eqz v0, :cond_5

    move v5, v7

    goto :goto_0

    :cond_5
    move v5, v6

    goto :goto_0
.end method

.method collectComponentCallbacksLocked(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;
    .locals 10
    .parameter "allActivities"
    .parameter "newConfig"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/res/Configuration;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentCallbacks;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2880
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2883
    .local v3, callbacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentCallbacks;>;"
    iget-object v8, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 2884
    iget-object v8, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2885
    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$ActivityClientRecord;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2886
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2887
    .local v2, ar:Landroid/app/ActivityThread$ActivityClientRecord;
    iget-object v1, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 2888
    .local v1, a:Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 2889
    iget-object v8, v2, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v8, v8, Landroid/app/Activity;->mFinished:Z

    if-nez v8, :cond_2

    if-nez p1, :cond_1

    if-eqz v1, :cond_2

    iget-boolean v8, v2, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-nez v8, :cond_2

    .line 2893
    :cond_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2894
    :cond_2
    if-eqz p2, :cond_0

    .line 2902
    iput-object p2, v2, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    goto :goto_0

    .line 2907
    .end local v1           #a:Landroid/app/Activity;
    .end local v2           #ar:Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$ActivityClientRecord;>;"
    :cond_3
    iget-object v8, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 2908
    iget-object v8, p0, Landroid/app/ActivityThread;->mServices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 2909
    .local v7, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/Service;>;"
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2910
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2913
    .end local v7           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/Service;>;"
    :cond_4
    iget-object v9, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 2914
    :try_start_0
    iget-object v8, p0, Landroid/app/ActivityThread;->mLocalProviders:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 2915
    iget-object v8, p0, Landroid/app/ActivityThread;->mLocalProviders:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 2916
    .local v6, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$ProviderClientRecord;>;"
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2917
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityThread$ProviderClientRecord;

    iget-object v8, v8, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2920
    .end local v6           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$ProviderClientRecord;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_5
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2921
    iget-object v8, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2922
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v0, :cond_6

    .line 2923
    iget-object v8, p0, Landroid/app/ActivityThread;->mAllApplications:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2922
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2926
    :cond_6
    return-object v3
.end method

.method final completeRemoveProvider(Landroid/content/IContentProvider;)V
    .locals 5
    .parameter "provider"

    .prologue
    .line 3448
    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3449
    .local v0, jBinder:Landroid/os/IBinder;
    const/4 v1, 0x0

    .line 3450
    .local v1, name:Ljava/lang/String;
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3451
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderRefCount;

    .line 3452
    .local v2, prc:Landroid/app/ActivityThread$ProviderRefCount;
    if-eqz v2, :cond_0

    iget v4, v2, Landroid/app/ActivityThread$ProviderRefCount;->count:I

    if-nez v4, :cond_0

    .line 3453
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3455
    invoke-virtual {p0, p1}, Landroid/app/ActivityThread;->removeProviderLocked(Landroid/content/IContentProvider;)Ljava/lang/String;

    move-result-object v1

    .line 3457
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3459
    if-eqz v1, :cond_1

    .line 3463
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Landroid/app/IActivityManager;->removeContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3469
    :cond_1
    :goto_0
    return-void

    .line 3457
    .end local v2           #prc:Landroid/app/ActivityThread$ProviderRefCount;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 3465
    .restart local v2       #prc:Landroid/app/ActivityThread$ProviderRefCount;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method doGcIfNeeded()V
    .locals 6

    .prologue
    .line 1432
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 1433
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1436
    .local v0, now:J
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->getLastGcTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 1438
    const-string v2, "bg"

    invoke-static {v2}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    .line 1440
    :cond_0
    return-void
.end method

.method ensureJitEnabled()V
    .locals 1

    .prologue
    .line 1409
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    if-nez v0, :cond_0

    .line 1410
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mJitEnabled:Z

    .line 1411
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    .line 1413
    :cond_0
    return-void
.end method

.method final finishInstrumentation(ILandroid/os/Bundle;)V
    .locals 2
    .parameter "resultCode"
    .parameter "results"

    .prologue
    .line 3301
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 3302
    .local v0, am:Landroid/app/IActivityManager;
    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->profileFile:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-boolean v1, v1, Landroid/app/ActivityThread$AppBindData;->handlingProfiling:Z

    if-eqz v1, :cond_0

    .line 3303
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 3308
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityManager;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3311
    :goto_0
    return-void

    .line 3309
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final getActivity(Landroid/os/IBinder;)Landroid/app/Activity;
    .locals 1
    .parameter "token"

    .prologue
    .line 1503
    iget-object v0, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 1377
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;
    .locals 1

    .prologue
    .line 1352
    iget-object v0, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 1361
    iget-object v0, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method getDisplayMetricsLocked(Z)Landroid/util/DisplayMetrics;
    .locals 3
    .parameter "forceUpdate"

    .prologue
    .line 1159
    iget-object v2, p0, Landroid/app/ActivityThread;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    .line 1160
    iget-object v2, p0, Landroid/app/ActivityThread;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 1171
    :goto_0
    return-object v2

    .line 1162
    :cond_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mDisplay:Landroid/view/Display;

    if-nez v2, :cond_1

    .line 1163
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    .line 1164
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ActivityThread;->mDisplay:Landroid/view/Display;

    .line 1166
    .end local v1           #wm:Landroid/view/WindowManager;
    :cond_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 1167
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget-object v2, p0, Landroid/app/ActivityThread;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    move-object v2, v0

    .line 1171
    goto :goto_0
.end method

.method final getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    return-object v0
.end method

.method public getInstrumentation()Landroid/app/Instrumentation;
    .locals 1

    .prologue
    .line 1357
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 1373
    iget-object v0, p0, Landroid/app/ActivityThread;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public final getPackageInfo(Landroid/content/pm/ApplicationInfo;I)Landroid/app/LoadedApk;
    .locals 9
    .parameter "ai"
    .parameter "flags"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v8, ")"

    const-string v7, " (with uid "

    .line 1289
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_2

    move v0, v5

    .line 1290
    .local v0, includeCode:Z
    :goto_0
    if-eqz v0, :cond_3

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v3, :cond_3

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v3, :cond_0

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v4, v4, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, v4, :cond_3

    :cond_0
    move v2, v5

    .line 1293
    .local v2, securityViolation:Z
    :goto_1
    and-int/lit8 v3, p2, 0x3

    if-ne v3, v5, :cond_4

    .line 1296
    if-eqz v2, :cond_4

    .line 1297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting code from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (with uid "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1299
    .local v1, msg:Ljava/lang/String;
    iget-object v3, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v3, :cond_1

    .line 1300
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to be run in process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v4, v4, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (with uid "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v4, v4, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1304
    :cond_1
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v0           #includeCode:Z
    .end local v1           #msg:Ljava/lang/String;
    .end local v2           #securityViolation:Z
    :cond_2
    move v0, v6

    .line 1289
    goto/16 :goto_0

    .restart local v0       #includeCode:Z
    :cond_3
    move v2, v6

    .line 1290
    goto :goto_1

    .line 1307
    .restart local v2       #securityViolation:Z
    :cond_4
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v2, v0}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;ZZ)Landroid/app/LoadedApk;

    move-result-object v3

    return-object v3
.end method

.method public final getPackageInfo(Ljava/lang/String;I)Landroid/app/LoadedApk;
    .locals 7
    .parameter "packageName"
    .parameter "flags"

    .prologue
    const/4 v5, 0x0

    .line 1249
    iget-object v4, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 1251
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_1

    .line 1252
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1256
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LoadedApk;

    move-object v1, v3

    .line 1260
    .local v1, packageInfo:Landroid/app/LoadedApk;
    :goto_1
    if-eqz v1, :cond_4

    iget-object v3, v1, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/app/LoadedApk;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1262
    :cond_0
    invoke-virtual {v1}, Landroid/app/LoadedApk;->isSecurityViolation()Z

    move-result v3

    if-eqz v3, :cond_3

    and-int/lit8 v3, p2, 0x2

    if-nez v3, :cond_3

    .line 1264
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requesting code from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to be run in process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v6, v6, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v6, v6, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1272
    .end local v1           #packageInfo:Landroid/app/LoadedApk;
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1254
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcePackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .restart local v2       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    goto :goto_0

    :cond_2
    move-object v1, v5

    .line 1256
    goto :goto_1

    .line 1270
    .restart local v1       #packageInfo:Landroid/app/LoadedApk;
    :cond_3
    monitor-exit v4

    move-object v3, v1

    .line 1285
    :goto_2
    return-object v3

    .line 1272
    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1274
    const/4 v0, 0x0

    .line 1276
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    :try_start_2
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/16 v4, 0x400

    invoke-interface {v3, p1, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 1281
    :goto_3
    if-eqz v0, :cond_5

    .line 1282
    invoke-virtual {p0, v0, p2}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;I)Landroid/app/LoadedApk;

    move-result-object v3

    goto :goto_2

    :cond_5
    move-object v3, v5

    .line 1285
    goto :goto_2

    .line 1278
    :catch_0
    move-exception v3

    goto :goto_3
.end method

.method public final getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;)Landroid/app/LoadedApk;
    .locals 3
    .parameter "ai"

    .prologue
    .line 1311
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/app/ActivityThread;->getPackageInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;ZZ)Landroid/app/LoadedApk;

    move-result-object v0

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1381
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1369
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->profileFile:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemContext()Landroid/app/ContextImpl;
    .locals 5

    .prologue
    .line 1385
    monitor-enter p0

    .line 1386
    :try_start_0
    sget-object v2, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    if-nez v2, :cond_0

    .line 1387
    invoke-static {p0}, Landroid/app/ContextImpl;->createSystemContext(Landroid/app/ActivityThread;)Landroid/app/ContextImpl;

    move-result-object v0

    .line 1389
    .local v0, context:Landroid/app/ContextImpl;
    new-instance v1, Landroid/app/LoadedApk;

    const-string v2, "android"

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v0, v3}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;Ljava/lang/String;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    .line 1390
    .local v1, info:Landroid/app/LoadedApk;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 1391
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/app/ActivityThread;->getDisplayMetricsLocked(Z)Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1393
    sput-object v0, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    .line 1397
    .end local v0           #context:Landroid/app/ContextImpl;
    .end local v1           #info:Landroid/app/LoadedApk;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1398
    sget-object v2, Landroid/app/ActivityThread;->mSystemContext:Landroid/app/ContextImpl;

    return-object v2

    .line 1397
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method getTopLevelResources(Ljava/lang/String;Landroid/app/LoadedApk;)Landroid/content/res/Resources;
    .locals 1
    .parameter "resDir"
    .parameter "pkgInfo"

    .prologue
    .line 1241
    iget-object v0, p2, Landroid/app/LoadedApk;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method getTopLevelResources(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .locals 9
    .parameter "resDir"
    .parameter "compInfo"

    .prologue
    const/4 v8, 0x0

    .line 1182
    new-instance v2, Landroid/app/ActivityThread$ResourcesKey;

    iget v6, p2, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-direct {v2, p1, v6}, Landroid/app/ActivityThread$ResourcesKey;-><init>(Ljava/lang/String;F)V

    .line 1184
    .local v2, key:Landroid/app/ActivityThread$ResourcesKey;
    iget-object v7, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v7

    .line 1190
    :try_start_0
    iget-object v6, p0, Landroid/app/ActivityThread;->mActiveResources:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 1191
    .local v5, wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/Resources;

    move-object v4, v6

    .line 1193
    .local v4, r:Landroid/content/res/Resources;
    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1198
    monitor-exit v7

    move-object v6, v4

    .line 1233
    :goto_1
    return-object v6

    .end local v4           #r:Landroid/content/res/Resources;
    :cond_0
    move-object v4, v8

    .line 1191
    goto :goto_0

    .line 1200
    .restart local v4       #r:Landroid/content/res/Resources;
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1207
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    .line 1208
    .local v0, assets:Landroid/content/res/AssetManager;
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    move-object v6, v8

    .line 1209
    goto :goto_1

    .line 1200
    .end local v0           #assets:Landroid/content/res/AssetManager;
    .end local v4           #r:Landroid/content/res/Resources;
    .end local v5           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 1213
    .restart local v0       #assets:Landroid/content/res/AssetManager;
    .restart local v4       #r:Landroid/content/res/Resources;
    .restart local v5       #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/app/ActivityThread;->getDisplayMetricsLocked(Z)Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 1214
    .local v3, metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 1221

    invoke-static {v0, v3, v6, p2}, Landroid/content/res/MiuiClassFactory;->newResources(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;

    move-result-object v4

    iget-object v7, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v7

    .line 1222
    :try_start_2
    iget-object v6, p0, Landroid/app/ActivityThread;->mActiveResources:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 1223
    .restart local v5       #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/Resources;

    move-object v1, v6

    .line 1224
    .local v1, existing:Landroid/content/res/Resources;
    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1227
    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/AssetManager;->close()V

    .line 1228
    monitor-exit v7

    move-object v6, v1

    goto :goto_1

    .end local v1           #existing:Landroid/content/res/Resources;
    :cond_3
    move-object v1, v8

    .line 1223
    goto :goto_2

    .line 1232
    .restart local v1       #existing:Landroid/content/res/Resources;
    :cond_4
    iget-object v6, p0, Landroid/app/ActivityThread;->mActiveResources:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    monitor-exit v7

    move-object v6, v4

    goto :goto_1

    .line 1234
    .end local v1           #existing:Landroid/content/res/Resources;
    .end local v5           #wr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6
.end method

.method final handleActivityConfigurationChanged(Landroid/os/IBinder;)V
    .locals 3
    .parameter "token"

    .prologue
    .line 3058
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 3059
    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 3067
    :cond_0
    :goto_0
    return-void

    .line 3066
    :cond_1
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v2, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v1, v2}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks;Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method final handleConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "config"

    .prologue
    .line 3022
    const/4 v1, 0x0

    .line 3024
    .local v1, callbacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentCallbacks;>;"
    iget-object v3, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 3025
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v4, :cond_1

    .line 3026
    iget-object v4, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3027
    iget-object p1, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 3029
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 3032
    :cond_1
    if-nez p1, :cond_3

    .line 3033
    monitor-exit v3

    .line 3055
    :cond_2
    :goto_0
    return-void

    .line 3039
    :cond_3
    invoke-virtual {p0, p1}, Landroid/app/ActivityThread;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;)Z

    .line 3041
    iget-object v4, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3042
    monitor-exit v3

    goto :goto_0

    .line 3047
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3044
    :cond_4
    :try_start_1
    iget-object v4, p0, Landroid/app/ActivityThread;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 3046
    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Landroid/app/ActivityThread;->collectComponentCallbacksLocked(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3047
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3049
    if-eqz v1, :cond_2

    .line 3050
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3051
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 3052
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentCallbacks;

    invoke-direct {p0, v3, p1}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks;Landroid/content/res/Configuration;)V

    .line 3051
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method final handleDispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 5
    .parameter "cmd"
    .parameter "packages"

    .prologue
    .line 3090
    const/4 v0, 0x0

    .line 3091
    .local v0, hasPkgInfo:Z
    if-eqz p2, :cond_2

    .line 3092
    array-length v3, p2

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 3094
    if-nez v0, :cond_0

    .line 3096
    iget-object v3, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 3097
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3098
    const/4 v0, 0x1

    .line 3106
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_0
    :goto_1
    iget-object v3, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3107
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcePackages:Ljava/util/HashMap;

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3092
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3100
    .restart local v2       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_1
    iget-object v3, p0, Landroid/app/ActivityThread;->mResourcePackages:Ljava/util/HashMap;

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 3101
    .restart local v2       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3102
    const/4 v0, 0x1

    goto :goto_1

    .line 3110
    .end local v1           #i:I
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/LoadedApk;>;"
    :cond_2
    invoke-static {p1, p2, v0}, Landroid/app/ContextImpl$ApplicationPackageManager;->handlePackageBroadcast(I[Ljava/lang/String;Z)V

    .line 3112
    return-void
.end method

.method final handleLowMemory()V
    .locals 7

    .prologue
    .line 3115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3118
    .local v1, callbacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentCallbacks;>;"
    iget-object v4, p0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 3119
    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0, v5, v6}, Landroid/app/ActivityThread;->collectComponentCallbacksLocked(ZLandroid/content/res/Configuration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3120
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3122
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3123
    .local v0, N:I
    const/4 v2, 0x0

    .end local p0
    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 3124
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentCallbacks;

    invoke-interface {p0}, Landroid/content/ComponentCallbacks;->onLowMemory()V

    .line 3123
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3120
    .end local v0           #N:I
    .end local v2           #i:I
    .restart local p0
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 3128
    .end local p0
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_1

    .line 3129
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    move-result v3

    .line 3130
    .local v3, sqliteReleased:I
    const v4, 0x124fb

    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 3134
    .end local v3           #sqliteReleased:I
    :cond_1
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 3136
    const-string v4, "mem"

    invoke-static {v4}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    .line 3137
    return-void
.end method

.method final handleProfilerControl(ZLandroid/app/ActivityThread$ProfilerControlData;)V
    .locals 7
    .parameter "start"
    .parameter "pcd"

    .prologue
    const-string v6, "Failure closing profile fd"

    const-string v5, "ActivityThread"

    .line 3070
    if-eqz p1, :cond_0

    .line 3072
    :try_start_0
    iget-object v1, p2, Landroid/app/ActivityThread$ProfilerControlData;->path:Ljava/lang/String;

    iget-object v2, p2, Landroid/app/ActivityThread$ProfilerControlData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/high16 v3, 0x80

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3079
    :try_start_1
    iget-object v1, p2, Landroid/app/ActivityThread$ProfilerControlData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 3087
    :goto_0
    return-void

    .line 3074
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3075
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profiling failed on path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/app/ActivityThread$ProfilerControlData;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- can the process access this path?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3079
    :try_start_3
    iget-object v1, p2, Landroid/app/ActivityThread$ProfilerControlData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 3080
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 3081
    .local v0, e:Ljava/io/IOException;
    const-string v1, "ActivityThread"

    const-string v1, "Failure closing profile fd"

    :goto_1
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3078
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 3079
    :try_start_4
    iget-object v2, p2, Landroid/app/ActivityThread$ProfilerControlData;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 3078
    :goto_2
    throw v1

    .line 3085
    :cond_0
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    goto :goto_0

    .line 3080
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 3081
    .restart local v0       #e:Ljava/io/IOException;
    const-string v2, "ActivityThread"

    const-string v2, "Failure closing profile fd"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 3080
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    move-object v0, v1

    .line 3081
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "ActivityThread"

    const-string v1, "Failure closing profile fd"

    goto :goto_1
.end method

.method final handleResumeActivity(Landroid/os/IBinder;ZZ)V
    .locals 11
    .parameter "token"
    .parameter "clearHide"
    .parameter "isForward"

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 2154
    invoke-virtual {p0}, Landroid/app/ActivityThread;->unscheduleGcIdler()V

    .line 2156
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityThread;->performResumeActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v4

    .line 2158
    .local v4, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v4, :cond_8

    .line 2159
    iget-object v0, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    .line 2166
    .local v0, a:Landroid/app/Activity;
    if-eqz p3, :cond_5

    const/16 v7, 0x100

    move v2, v7

    .line 2172
    .local v2, forwardBit:I
    :goto_0
    iget-boolean v7, v0, Landroid/app/Activity;->mStartedActivity:Z

    if-nez v7, :cond_6

    move v5, v9

    .line 2173
    .local v5, willBeVisible:Z
    :goto_1
    if-nez v5, :cond_0

    .line 2175
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->willActivityBeVisible(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 2180
    :cond_0
    :goto_2
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    if-nez v7, :cond_7

    iget-boolean v7, v0, Landroid/app/Activity;->mFinished:Z

    if-nez v7, :cond_7

    if-eqz v5, :cond_7

    .line 2181
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    iput-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    .line 2182
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 2183
    .local v1, decor:Landroid/view/View;
    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2184
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    .line 2185
    .local v6, wm:Landroid/view/ViewManager;
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 2186
    .local v3, l:Landroid/view/WindowManager$LayoutParams;
    iput-object v1, v0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 2187
    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2188
    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/2addr v7, v2

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2189
    iget-boolean v7, v0, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v7, :cond_1

    .line 2190
    iput-boolean v9, v0, Landroid/app/Activity;->mWindowAdded:Z

    .line 2191
    invoke-interface {v6, v1, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2205
    .end local v1           #decor:Landroid/view/View;
    .end local v3           #l:Landroid/view/WindowManager$LayoutParams;
    .end local v6           #wm:Landroid/view/ViewManager;
    :cond_1
    :goto_3
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v7, v7, Landroid/app/Activity;->mFinished:Z

    if-nez v7, :cond_4

    if-eqz v5, :cond_4

    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v7, v7, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-eqz v7, :cond_4

    iget-boolean v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    if-nez v7, :cond_4

    .line 2207
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    if-eqz v7, :cond_2

    .line 2210
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v8, v4, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    invoke-direct {p0, v7, v8}, Landroid/app/ActivityThread;->performConfigurationChanged(Landroid/content/ComponentCallbacks;Landroid/content/res/Configuration;)V

    .line 2211
    iput-object v10, v4, Landroid/app/ActivityThread$ActivityClientRecord;->newConfig:Landroid/content/res/Configuration;

    .line 2215
    :cond_2
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 2216
    .restart local v3       #l:Landroid/view/WindowManager$LayoutParams;
    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v7, v7, 0x100

    if-eq v7, v2, :cond_3

    .line 2219
    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v7, v7, -0x101

    or-int/2addr v7, v2

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2222
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v7, v7, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v7, :cond_3

    .line 2223
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    .line 2224
    .restart local v6       #wm:Landroid/view/ViewManager;
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->window:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 2225
    .restart local v1       #decor:Landroid/view/View;
    invoke-interface {v6, v1, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2228
    .end local v1           #decor:Landroid/view/View;
    .end local v6           #wm:Landroid/view/ViewManager;
    :cond_3
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v9, v7, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 2229
    iget v7, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/app/ActivityThread;->mNumVisibleActivities:I

    .line 2230
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v7, v7, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eqz v7, :cond_4

    .line 2231
    iget-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->makeVisible()V

    .line 2235
    .end local v3           #l:Landroid/view/WindowManager$LayoutParams;
    :cond_4
    iget-object v7, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    iput-object v7, v4, Landroid/app/ActivityThread$ActivityClientRecord;->nextIdle:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2236
    iput-object v4, p0, Landroid/app/ActivityThread;->mNewActivities:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2239
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v7

    new-instance v8, Landroid/app/ActivityThread$Idler;

    invoke-direct {v8, p0, v10}, Landroid/app/ActivityThread$Idler;-><init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V

    invoke-virtual {v7, v8}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2250
    .end local v0           #a:Landroid/app/Activity;
    .end local v2           #forwardBit:I
    .end local v5           #willBeVisible:Z
    :goto_4
    return-void

    .restart local v0       #a:Landroid/app/Activity;
    :cond_5
    move v2, v8

    .line 2166
    goto/16 :goto_0

    .restart local v2       #forwardBit:I
    :cond_6
    move v5, v8

    .line 2172
    goto/16 :goto_1

    .line 2197
    .restart local v5       #willBeVisible:Z
    :cond_7
    if-nez v5, :cond_1

    .line 2200
    iput-boolean v9, v4, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    goto :goto_3

    .line 2245
    .end local v0           #a:Landroid/app/Activity;
    .end local v2           #forwardBit:I
    .end local v5           #willBeVisible:Z
    :cond_8
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v7, p1, v8, v9}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 2247
    :catch_0
    move-exception v7

    goto :goto_4

    .line 2177
    .restart local v0       #a:Landroid/app/Activity;
    .restart local v2       #forwardBit:I
    .restart local v5       #willBeVisible:Z
    :catch_1
    move-exception v7

    goto/16 :goto_2
.end method

.method public installSystemApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 1402
    monitor-enter p0

    .line 1403
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 1404
    .local v0, context:Landroid/app/ContextImpl;
    new-instance v1, Landroid/app/LoadedApk;

    const-string v2, "android"

    invoke-direct {v1, p0, v2, v0, p1}, Landroid/app/LoadedApk;-><init>(Landroid/app/ActivityThread;Ljava/lang/String;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 1405
    monitor-exit p0

    .line 1406
    return-void

    .line 1405
    .end local v0           #context:Landroid/app/ContextImpl;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final installSystemProviders(Ljava/util/List;)V
    .locals 1
    .parameter "providers"

    .prologue
    .line 3677
    if-eqz p1, :cond_0

    .line 3678
    iget-object v0, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-direct {p0, v0, p1}, Landroid/app/ActivityThread;->installContentProviders(Landroid/content/Context;Ljava/util/List;)V

    .line 3681
    :cond_0
    return-void
.end method

.method public isProfiling()Z
    .locals 1

    .prologue
    .line 1365
    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->profileFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final performDestroyActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 1
    .parameter "token"
    .parameter "finishing"

    .prologue
    const/4 v0, 0x0

    .line 2603
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/app/ActivityThread;->performDestroyActivity(Landroid/os/IBinder;ZIZ)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v0

    return-object v0
.end method

.method public final performNewIntents(Landroid/os/IBinder;Ljava/util/List;)V
    .locals 4
    .parameter "token"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1740
    .local p2, intents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 1741
    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_1

    .line 1742
    iget-boolean v2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    move v1, v2

    .line 1743
    .local v1, resumed:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1744
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 1746
    :cond_0
    invoke-direct {p0, v0, p2}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 1747
    if-eqz v1, :cond_1

    .line 1748
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    .line 1751
    .end local v1           #resumed:Z
    :cond_1
    return-void

    .line 1742
    :cond_2
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method final performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZ)Landroid/os/Bundle;
    .locals 11
    .parameter "r"
    .parameter "finished"
    .parameter "saveState"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2337
    iget-boolean v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    if-eqz v6, :cond_1

    .line 2338
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v6, v6, Landroid/app/Activity;->mFinished:Z

    if-eqz v6, :cond_0

    .line 2342
    const/4 v6, 0x0

    .line 2393
    .end local p0
    :goto_0
    return-object v6

    .line 2344
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Performing pause of activity that is not resumed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2347
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v6, "ActivityThread"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2349
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_1
    const/4 v4, 0x0

    .line 2350
    .local v4, state:Landroid/os/Bundle;
    if-eqz p2, :cond_2

    .line 2351
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v10, v6, Landroid/app/Activity;->mFinished:Z

    .line 2355
    :cond_2
    :try_start_0
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v6, v6, Landroid/app/Activity;->mFinished:Z

    if-nez v6, :cond_3

    if-eqz p3, :cond_3

    .line 2356
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Landroid/app/SuperNotCalledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2357
    .end local v4           #state:Landroid/os/Bundle;
    .local v5, state:Landroid/os/Bundle;
    :try_start_1
    iget-object v6, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v7, v5}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 2358
    iput-object v5, p1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/app/SuperNotCalledException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v5

    .line 2361
    .end local v5           #state:Landroid/os/Bundle;
    .restart local v4       #state:Landroid/os/Bundle;
    :cond_3
    :try_start_2
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/app/Activity;->mCalled:Z

    .line 2362
    iget-object v6, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 2363
    const/16 v6, 0x7545

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2364
    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v6, v6, Landroid/app/Activity;->mCalled:Z

    if-nez v6, :cond_4

    .line 2365
    new-instance v6, Landroid/app/SuperNotCalledException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " did not call through to super.onPause()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Landroid/app/SuperNotCalledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2370
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 2371
    .local v0, e:Landroid/app/SuperNotCalledException;
    :goto_1
    throw v0

    .line 2373
    .end local v0           #e:Landroid/app/SuperNotCalledException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 2374
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    iget-object v6, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v7, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v7, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 2375
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to pause activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 2381
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    iput-boolean v10, p1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 2385
    iget-object v6, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Ljava/util/HashMap;

    monitor-enter v6

    .line 2386
    :try_start_3
    iget-object v7, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Ljava/util/HashMap;

    iget-object v8, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2387
    .local v2, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2388
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 2389
    .local v3, size:I
    :goto_3
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_4
    if-ge v1, v3, :cond_6

    .line 2390
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/OnActivityPausedListener;

    iget-object v6, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-interface {p0, v6}, Landroid/app/OnActivityPausedListener;->onPaused(Landroid/app/Activity;)V

    .line 2389
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2387
    .end local v1           #i:I
    .end local v2           #listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    .end local v3           #size:I
    .restart local p0
    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .restart local v2       #listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    :cond_5
    move v3, v9

    .line 2388
    goto :goto_3

    .end local p0
    .restart local v1       #i:I
    .restart local v3       #size:I
    :cond_6
    move-object v6, v4

    .line 2393
    goto/16 :goto_0

    .line 2373
    .end local v1           #i:I
    .end local v2           #listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    .end local v3           #size:I
    .end local v4           #state:Landroid/os/Bundle;
    .restart local v5       #state:Landroid/os/Bundle;
    .restart local p0
    :catch_2
    move-exception v6

    move-object v0, v6

    move-object v4, v5

    .end local v5           #state:Landroid/os/Bundle;
    .restart local v4       #state:Landroid/os/Bundle;
    goto :goto_2

    .line 2370
    .end local v4           #state:Landroid/os/Bundle;
    .restart local v5       #state:Landroid/os/Bundle;
    :catch_3
    move-exception v6

    move-object v0, v6

    move-object v4, v5

    .end local v5           #state:Landroid/os/Bundle;
    .restart local v4       #state:Landroid/os/Bundle;
    goto :goto_1
.end method

.method final performPauseActivity(Landroid/os/IBinder;ZZ)Landroid/os/Bundle;
    .locals 2
    .parameter "token"
    .parameter "finished"
    .parameter "saveState"

    .prologue
    .line 2331
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2332
    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/ActivityThread;->performPauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZ)Landroid/os/Bundle;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final performRestartActivity(Landroid/os/IBinder;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 2513
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2514
    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    iget-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    if-eqz v1, :cond_0

    .line 2515
    iget-object v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->performRestart()V

    .line 2516
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 2518
    :cond_0
    return-void
.end method

.method public final performResumeActivity(Landroid/os/IBinder;Z)Landroid/app/ActivityThread$ActivityClientRecord;
    .locals 5
    .parameter "token"
    .parameter "clearHide"

    .prologue
    const/4 v3, 0x0

    .line 2114
    iget-object v2, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2117
    .local v1, r:Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v1, :cond_3

    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-boolean v2, v2, Landroid/app/Activity;->mFinished:Z

    if-nez v2, :cond_3

    .line 2118
    if-eqz p2, :cond_0

    .line 2119
    iput-boolean v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->hideForNow:Z

    .line 2120
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iput-boolean v3, v2, Landroid/app/Activity;->mStartedActivity:Z

    .line 2123
    :cond_0
    :try_start_0
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 2124
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Landroid/app/ActivityThread;->deliverNewIntents(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 2125
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 2127
    :cond_1
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 2128
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Landroid/app/ActivityThread;->deliverResults(Landroid/app/ActivityThread$ActivityClientRecord;Ljava/util/List;)V

    .line 2129
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 2131
    :cond_2
    iget-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->performResume()V

    .line 2133
    const/16 v2, 0x7546

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2136
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->paused:Z

    .line 2137
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->stopped:Z

    .line 2138
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2148
    :cond_3
    return-object v1

    .line 2139
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 2140
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2141
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to resume activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method final performStopActivity(Landroid/os/IBinder;)V
    .locals 3
    .parameter "token"

    .prologue
    .line 2397
    iget-object v1, p0, Landroid/app/ActivityThread;->mActivities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ActivityClientRecord;

    .line 2398
    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/app/ActivityThread;->performStopActivityInner(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/ActivityThread$StopInfo;Z)V

    .line 2399
    return-void
.end method

.method final performUserLeavingActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 2326
    iget-object v0, p0, Landroid/app/ActivityThread;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnUserLeaving(Landroid/app/Activity;)V

    .line 2327
    return-void
.end method

.method public registerOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V
    .locals 3
    .parameter "activity"
    .parameter "listener"

    .prologue
    .line 1444
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 1445
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1446
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    if-nez v0, :cond_0

    .line 1447
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1448
    .restart local v0       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    iget-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1451
    monitor-exit v1

    .line 1452
    return-void

    .line 1451
    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public final releaseProvider(Landroid/content/IContentProvider;)Z
    .locals 7
    .parameter "provider"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3422
    if-nez p1, :cond_0

    move v3, v5

    .line 3444
    :goto_0
    return v3

    .line 3425
    :cond_0
    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3426
    .local v0, jBinder:Landroid/os/IBinder;
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3427
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThread;->mProviderRefCountMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityThread$ProviderRefCount;

    .line 3428
    .local v2, prc:Landroid/app/ActivityThread$ProviderRefCount;
    if-nez v2, :cond_1

    .line 3430
    monitor-exit v3

    move v3, v5

    goto :goto_0

    .line 3432
    :cond_1
    iget v4, v2, Landroid/app/ActivityThread$ProviderRefCount;->count:I

    sub-int/2addr v4, v6

    iput v4, v2, Landroid/app/ActivityThread$ProviderRefCount;->count:I

    .line 3433
    iget v4, v2, Landroid/app/ActivityThread$ProviderRefCount;->count:I

    if-nez v4, :cond_2

    .line 3439
    iget-object v4, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v5, 0x83

    invoke-virtual {v4, v5, p1}, Landroid/app/ActivityThread$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3440
    .local v1, msg:Landroid/os/Message;
    iget-object v4, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v4, v1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 3443
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    monitor-exit v3

    move v3, v6

    .line 3444
    goto :goto_0

    .line 3443
    .end local v2           #prc:Landroid/app/ActivityThread$ProviderRefCount;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method final removeDeadProvider(Ljava/lang/String;Landroid/content/IContentProvider;)V
    .locals 6
    .parameter "name"
    .parameter "provider"

    .prologue
    .line 3506
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 3507
    :try_start_0
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 3508
    .local v0, pr:Landroid/app/ActivityThread$ProviderClientRecord;
    iget-object v3, v0, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v3}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 3509
    const-string v3, "ActivityThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing dead content provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3510
    iget-object v3, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 3511
    .local v1, removed:Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v1, :cond_0

    .line 3512
    iget-object v3, v1, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v3}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3515
    .end local v1           #removed:Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_0
    monitor-exit v2

    .line 3516
    return-void

    .line 3515
    .end local v0           #pr:Landroid/app/ActivityThread$ProviderClientRecord;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method final removeDeadProviderLocked(Ljava/lang/String;Landroid/content/IContentProvider;)V
    .locals 5
    .parameter "name"
    .parameter "provider"

    .prologue
    .line 3519
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 3520
    .local v0, pr:Landroid/app/ActivityThread$ProviderClientRecord;
    iget-object v2, v0, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 3521
    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing dead content provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3522
    iget-object v2, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 3523
    .local v1, removed:Landroid/app/ActivityThread$ProviderClientRecord;
    if-eqz v1, :cond_0

    .line 3524
    iget-object v2, v1, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v2}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3527
    .end local v1           #removed:Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_0
    return-void
.end method

.method public final removeProviderLocked(Landroid/content/IContentProvider;)Ljava/lang/String;
    .locals 6
    .parameter "provider"

    .prologue
    .line 3472
    if-nez p1, :cond_0

    .line 3473
    const/4 v5, 0x0

    .line 3502
    :goto_0
    return-object v5

    .line 3475
    :cond_0
    invoke-interface {p1}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 3477
    .local v4, providerBinder:Landroid/os/IBinder;
    const/4 v2, 0x0

    .line 3480
    .local v2, name:Ljava/lang/String;
    iget-object v5, p0, Landroid/app/ActivityThread;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3481
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityThread$ProviderClientRecord;>;"
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3482
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityThread$ProviderClientRecord;

    .line 3483
    .local v3, pr:Landroid/app/ActivityThread$ProviderClientRecord;
    iget-object v5, v3, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v5}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3484
    .local v1, myBinder:Landroid/os/IBinder;
    if-ne v1, v4, :cond_1

    .line 3486
    iget-object v5, v3, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    if-eqz v5, :cond_2

    move-object v5, v2

    .line 3488
    goto :goto_0

    .line 3493
    :cond_2
    const/4 v5, 0x0

    invoke-interface {v1, v3, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3494
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 3496
    if-nez v2, :cond_1

    .line 3497
    iget-object v2, v3, Landroid/app/ActivityThread$ProviderClientRecord;->mName:Ljava/lang/String;

    goto :goto_1

    .end local v1           #myBinder:Landroid/os/IBinder;
    .end local v3           #pr:Landroid/app/ActivityThread$ProviderClientRecord;
    :cond_3
    move-object v5, v2

    .line 3502
    goto :goto_0
.end method

.method public final resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .locals 3
    .parameter "intent"

    .prologue
    .line 1465
    iget-object v1, p0, Landroid/app/ActivityThread;->mInitialApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1467
    .local v0, aInfo:Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_0

    .line 1469
    const/4 v1, -0x2

    invoke-static {v1, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    .line 1472
    :cond_0
    return-object v0
.end method

.method final scheduleContextCleanup(Landroid/app/ContextImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "who"
    .parameter "what"

    .prologue
    .line 1542
    new-instance v0, Landroid/app/ActivityThread$ContextCleanupInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityThread$ContextCleanupInfo;-><init>(Landroid/app/ActivityThread$1;)V

    .line 1543
    .local v0, cci:Landroid/app/ActivityThread$ContextCleanupInfo;
    iput-object p1, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->context:Landroid/app/ContextImpl;

    .line 1544
    iput-object p2, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->who:Ljava/lang/String;

    .line 1545
    iput-object p3, v0, Landroid/app/ActivityThread$ContextCleanupInfo;->what:Ljava/lang/String;

    .line 1546
    const/16 v1, 0x77

    invoke-direct {p0, v1, v0}, Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V

    .line 1547
    return-void
.end method

.method scheduleGcIdler()V
    .locals 2

    .prologue
    .line 1416
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    if-nez v0, :cond_0

    .line 1417
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 1418
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1420
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 1421
    return-void
.end method

.method public final sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 2
    .parameter "token"
    .parameter "id"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1512
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v1, Landroid/app/ResultInfo;

    invoke-direct {v1, p2, p3, p4, p5}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1513
    iget-object v1, p0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v1, p1, v0}, Landroid/app/ActivityThread$ApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 1514
    return-void
.end method

.method public final startActivityNow(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Landroid/os/Bundle;Ljava/lang/Object;)Landroid/app/Activity;
    .locals 2
    .parameter "parent"
    .parameter "id"
    .parameter "intent"
    .parameter "activityInfo"
    .parameter "token"
    .parameter "state"
    .parameter "lastNonConfigurationInstance"

    .prologue
    .line 1478
    new-instance v0, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v0}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    .line 1479
    .local v0, r:Landroid/app/ActivityThread$ActivityClientRecord;
    iput-object p5, v0, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 1480
    const/4 v1, 0x0

    iput v1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    .line 1481
    iput-object p3, v0, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 1482
    iput-object p6, v0, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 1483
    iput-object p1, v0, Landroid/app/ActivityThread$ActivityClientRecord;->parent:Landroid/app/Activity;

    .line 1484
    iput-object p2, v0, Landroid/app/ActivityThread$ActivityClientRecord;->embeddedID:Ljava/lang/String;

    .line 1485
    iput-object p4, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1486
    iput-object p7, v0, Landroid/app/ActivityThread$ActivityClientRecord;->lastNonConfigurationInstance:Ljava/lang/Object;

    .line 1499
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/app/ActivityThread;->performLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v1

    return-object v1
.end method

.method public unregisterOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V
    .locals 3
    .parameter "activity"
    .parameter "listener"

    .prologue
    .line 1456
    iget-object v1, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 1457
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityThread;->mOnPauseListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1458
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    if-eqz v0, :cond_0

    .line 1459
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1461
    :cond_0
    monitor-exit v1

    .line 1462
    return-void

    .line 1461
    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/OnActivityPausedListener;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method unscheduleGcIdler()V
    .locals 2

    .prologue
    .line 1424
    iget-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    if-eqz v0, :cond_0

    .line 1425
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityThread;->mGcIdlerScheduled:Z

    .line 1426
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread;->mGcIdler:Landroid/app/ActivityThread$GcIdler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1428
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 1429
    return-void
.end method
