.class Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$DeleteRefuseListener;
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
    name = "DeleteRefuseListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$DeleteRefuseListener;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 477
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$DeleteRefuseListener;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$DeleteRefuseListener;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->hidePhotoStackDialog()V

    .line 481
    return-void
.end method
