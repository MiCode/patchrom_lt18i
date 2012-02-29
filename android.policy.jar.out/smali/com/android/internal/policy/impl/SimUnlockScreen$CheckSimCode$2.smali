.class Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimCode$2;
.super Ljava/lang/Object;
.source "SimUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimCode;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimCode;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimCode;)V
    .locals 0
    .parameter

    .prologue
    .line 624
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimCode$2;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimCode$2;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimCode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimCode;->onSupplyPukResponse(Z)V

    .line 627
    return-void
.end method
