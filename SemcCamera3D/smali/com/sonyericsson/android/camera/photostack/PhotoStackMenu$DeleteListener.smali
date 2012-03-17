.class Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$DeleteListener;
.super Ljava/lang/Object;
.source "PhotoStackMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteListener"
.end annotation


# instance fields
.field private mClickFlag:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;)V
    .locals 1
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$DeleteListener;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$DeleteListener;->mClickFlag:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 463
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$DeleteListener;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$DeleteListener;->mClickFlag:Z

    if-nez v0, :cond_0

    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$DeleteListener;->mClickFlag:Z

    .line 471
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$DeleteListener;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->performDelete()V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$DeleteListener;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->hidePhotoStackDialog()V

    .line 474
    return-void
.end method
