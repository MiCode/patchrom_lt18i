.class Lcom/android/settings/wifi/WifiDialog$1;
.super Ljava/lang/Object;
.source "WifiDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/settings/wifi/WifiDialog$1;->this$0:Lcom/android/settings/wifi/WifiDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog$1;->this$0:Lcom/android/settings/wifi/WifiDialog;

    #calls: Lcom/android/settings/wifi/WifiDialog;->validateWapi()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDialog;->access$000(Lcom/android/settings/wifi/WifiDialog;)V

    .line 126
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 128
    return-void
.end method
