.class Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;
.super Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;
.source "UnlockerScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartPoint"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "StartPoint"


# instance fields
.field final synthetic this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;


# direct methods
.method public constructor <init>(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 475
    iput-object p1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    .line 476
    const-string v0, "StartPoint"

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$UnlockPoint;-><init>(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;Lorg/w3c/dom/Element;Ljava/lang/String;)V

    .line 477
    return-void
.end method


# virtual methods
.method protected onStateChange(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;)V
    .locals 2
    .parameter "pre"
    .parameter "s"

    .prologue
    .line 481
    sget-object v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->Invalid:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    if-ne p1, v0, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    sget-object v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$1;->$SwitchMap$com$miui$internal$policy$impl$AwesomeLockScreenImp$UnlockerScreenElement$State:[I

    invoke-virtual {p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 487
    :pswitch_0
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;->mNormalSound:Ljava/lang/String;

    #calls: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->playSound(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$2600(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;Ljava/lang/String;)V

    goto :goto_0

    .line 490
    :pswitch_1
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->mPressed:Z
    invoke-static {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$2500(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;

    iget-object v1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$StartPoint;->mPressedSound:Ljava/lang/String;

    #calls: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->playSound(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;->access$2600(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;Ljava/lang/String;)V

    goto :goto_0

    .line 485
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
