.class final Lcom/android/settings/IccLockSettings$PinCodes;
.super Ljava/lang/Object;
.source "IccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PinCodes"
.end annotation


# instance fields
.field final mNew:Ljava/lang/String;

.field final mOld:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "oldPin"
    .parameter "newPin"

    .prologue
    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$PinCodes;->mOld:Ljava/lang/String;

    .line 370
    iput-object p2, p0, Lcom/android/settings/IccLockSettings$PinCodes;->mNew:Ljava/lang/String;

    .line 371
    return-void
.end method
