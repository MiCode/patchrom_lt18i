.class Landroid/webkit/WebView$InvokeListBox$3;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView$InvokeListBox;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebView$InvokeListBox;


# direct methods
.method constructor <init>(Landroid/webkit/WebView$InvokeListBox;)V
    .locals 0
    .parameter

    .prologue
    .line 7633
    iput-object p1, p0, Landroid/webkit/WebView$InvokeListBox$3;->this$1:Landroid/webkit/WebView$InvokeListBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 7636
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$3;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v0}, Landroid/webkit/WebView;->access$800(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x7c

    long-to-int v2, p4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 7638
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$3;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mListBoxDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Landroid/webkit/WebView;->access$11500(Landroid/webkit/WebView;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 7639
    iget-object v0, p0, Landroid/webkit/WebView$InvokeListBox$3;->this$1:Landroid/webkit/WebView$InvokeListBox;

    iget-object v0, v0, Landroid/webkit/WebView$InvokeListBox;->this$0:Landroid/webkit/WebView;

    const/4 v1, 0x0

    #setter for: Landroid/webkit/WebView;->mListBoxDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$11502(Landroid/webkit/WebView;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 7640
    return-void
.end method
