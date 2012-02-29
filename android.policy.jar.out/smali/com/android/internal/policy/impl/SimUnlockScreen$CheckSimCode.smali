.class abstract Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimCode;
.super Ljava/lang/Thread;
.source "SimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimCode"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field private final mPuk:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "puk"
    .parameter "pin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimCode;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 598
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 599
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 601
    :cond_1
    iput-object p2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimCode;->mPuk:Ljava/lang/String;

    .line 602
    iput-object p3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimCode;->mPin:Ljava/lang/String;

    .line 603
    return-void
.end method


# virtual methods
.method abstract onSupplyPukResponse(Z)V
.end method

.method public run()V
    .locals 5

    .prologue
    .line 615
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimCode;->mPuk:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimCode;->mPin:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 618
    .local v1, result:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimCode;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    new-instance v3, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimCode$1;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimCode$1;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimCode;Z)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    .end local v1           #result:Z
    :goto_0
    return-void

    .line 623
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 624
    .local v0, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimCode;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    new-instance v3, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimCode$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimCode$2;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimCode;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
