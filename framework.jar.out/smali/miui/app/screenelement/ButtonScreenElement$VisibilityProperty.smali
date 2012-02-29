.class Lmiui/app/screenelement/ButtonScreenElement$VisibilityProperty;
.super Lmiui/app/screenelement/ButtonScreenElement$Property;
.source "ButtonScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/ButtonScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VisibilityProperty"
.end annotation


# instance fields
.field private mIsShow:Z

.field private mIsToggle:Z

.field final synthetic this$0:Lmiui/app/screenelement/ButtonScreenElement;


# direct methods
.method protected constructor <init>(Lmiui/app/screenelement/ButtonScreenElement;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "target"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 75
    iput-object p1, p0, Lmiui/app/screenelement/ButtonScreenElement$VisibilityProperty;->this$0:Lmiui/app/screenelement/ButtonScreenElement;

    .line 76
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/ButtonScreenElement$Property;-><init>(Lmiui/app/screenelement/ButtonScreenElement;Ljava/lang/String;)V

    .line 77
    const-string/jumbo v0, "toggle"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iput-boolean v1, p0, Lmiui/app/screenelement/ButtonScreenElement$VisibilityProperty;->mIsToggle:Z

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const-string/jumbo v0, "true"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    iput-boolean v1, p0, Lmiui/app/screenelement/ButtonScreenElement$VisibilityProperty;->mIsShow:Z

    goto :goto_0

    .line 81
    :cond_2
    const-string v0, "false"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/screenelement/ButtonScreenElement$VisibilityProperty;->mIsShow:Z

    goto :goto_0
.end method


# virtual methods
.method public perform()V
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lmiui/app/screenelement/ButtonScreenElement$VisibilityProperty;->getTarget()Lmiui/app/screenelement/ScreenElement;

    move-result-object v0

    .line 88
    .local v0, tar:Lmiui/app/screenelement/ScreenElement;
    if-eqz v0, :cond_0

    .line 89
    iget-boolean v1, p0, Lmiui/app/screenelement/ButtonScreenElement$VisibilityProperty;->mIsToggle:Z

    if-eqz v1, :cond_2

    .line 90
    invoke-virtual {v0}, Lmiui/app/screenelement/ScreenElement;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lmiui/app/screenelement/ScreenElement;->show(Z)V

    .line 94
    :cond_0
    :goto_1
    return-void

    .line 90
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 92
    :cond_2
    iget-boolean v1, p0, Lmiui/app/screenelement/ButtonScreenElement$VisibilityProperty;->mIsShow:Z

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/ScreenElement;->show(Z)V

    goto :goto_1
.end method
