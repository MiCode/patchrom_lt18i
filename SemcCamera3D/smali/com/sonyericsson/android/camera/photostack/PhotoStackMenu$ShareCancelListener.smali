.class Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$ShareCancelListener;
.super Ljava/lang/Object;
.source "PhotoStackMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareCancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$ShareCancelListener;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 508
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$ShareCancelListener;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 511
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$ShareCancelListener;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->hidePhotoStackDialog()V

    .line 512
    return-void
.end method
