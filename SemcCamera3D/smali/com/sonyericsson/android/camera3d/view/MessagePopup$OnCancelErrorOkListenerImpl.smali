.class public Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnCancelErrorOkListenerImpl;
.super Ljava/lang/Object;
.source "MessagePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/MessagePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnCancelErrorOkListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/view/MessagePopup;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/view/MessagePopup;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnCancelErrorOkListenerImpl;->this$0:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/MessagePopup$OnCancelErrorOkListenerImpl;->this$0:Lcom/sonyericsson/android/camera3d/view/MessagePopup;

    const/4 v1, 0x0

    #setter for: Lcom/sonyericsson/android/camera3d/view/MessagePopup;->mMemoryErrorPopup:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/view/MessagePopup;->access$002(Lcom/sonyericsson/android/camera3d/view/MessagePopup;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 181
    return-void
.end method
