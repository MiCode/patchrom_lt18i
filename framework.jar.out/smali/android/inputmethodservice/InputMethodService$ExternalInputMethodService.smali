.class Landroid/inputmethodservice/InputMethodService$ExternalInputMethodService;
.super Ljava/lang/Object;
.source "InputMethodService.java"

# interfaces
.implements Landroid/view/KeyEvent$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExternalInputMethodService"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method private constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .parameter

    .prologue
    .line 2130
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$ExternalInputMethodService;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/inputmethodservice/InputMethodService;Landroid/inputmethodservice/InputMethodService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2130
    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService$ExternalInputMethodService;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 2133
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2134
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$ExternalInputMethodService;->this$0:Landroid/inputmethodservice/InputMethodService;

    #calls: Landroid/inputmethodservice/InputMethodService;->handleBack(Z)Z
    invoke-static {v0, v2}, Landroid/inputmethodservice/InputMethodService;->access$100(Landroid/inputmethodservice/InputMethodService;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2135
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 2136
    const/4 v0, 0x1

    .line 2140
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 2138
    goto :goto_0

    .line 2140
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$ExternalInputMethodService;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2144
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    .line 2148
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$ExternalInputMethodService;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p3, p2}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2152
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2154
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$ExternalInputMethodService;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v1, 0x1

    #calls: Landroid/inputmethodservice/InputMethodService;->handleBack(Z)Z
    invoke-static {v0, v1}, Landroid/inputmethodservice/InputMethodService;->access$100(Landroid/inputmethodservice/InputMethodService;Z)Z

    move-result v0

    .line 2156
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService$ExternalInputMethodService;->this$0:Landroid/inputmethodservice/InputMethodService;

    const/4 v1, -0x2

    invoke-virtual {v0, p1, p2, v1}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result v0

    goto :goto_0
.end method
