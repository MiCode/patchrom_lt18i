.class Lmiui/app/screenelement/ButtonScreenElement$Trigger;
.super Ljava/lang/Object;
.source "ButtonScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/ButtonScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Trigger"
.end annotation


# instance fields
.field private mAction:Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

.field private pro:Lmiui/app/screenelement/ButtonScreenElement$Property;

.field final synthetic this$0:Lmiui/app/screenelement/ButtonScreenElement;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ButtonScreenElement;Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter
    .parameter "ele"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 106
    iput-object p1, p0, Lmiui/app/screenelement/ButtonScreenElement$Trigger;->this$0:Lmiui/app/screenelement/ButtonScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    sget-object v0, Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;->Invalid:Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    iput-object v0, p0, Lmiui/app/screenelement/ButtonScreenElement$Trigger;->mAction:Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    .line 107
    invoke-direct {p0, p2}, Lmiui/app/screenelement/ButtonScreenElement$Trigger;->load(Lorg/w3c/dom/Element;)V

    .line 108
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 7
    .parameter "ele"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const-string v6, "invalid trigger element"

    .line 115
    if-eqz p1, :cond_3

    .line 116
    const-string/jumbo v4, "target"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, target:Ljava/lang/String;
    const-string v4, "property"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, property:Ljava/lang/String;
    const-string/jumbo v4, "value"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, value:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    new-instance v4, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v5, "invalid trigger element"

    invoke-direct {v4, v6}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 122
    :cond_0
    const-string/jumbo v4, "visibility"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 123
    new-instance v4, Lmiui/app/screenelement/ButtonScreenElement$VisibilityProperty;

    iget-object v5, p0, Lmiui/app/screenelement/ButtonScreenElement$Trigger;->this$0:Lmiui/app/screenelement/ButtonScreenElement;

    invoke-direct {v4, v5, v2, v3}, Lmiui/app/screenelement/ButtonScreenElement$VisibilityProperty;-><init>(Lmiui/app/screenelement/ButtonScreenElement;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lmiui/app/screenelement/ButtonScreenElement$Trigger;->pro:Lmiui/app/screenelement/ButtonScreenElement$Property;

    .line 125
    :cond_1
    iget-object v4, p0, Lmiui/app/screenelement/ButtonScreenElement$Trigger;->pro:Lmiui/app/screenelement/ButtonScreenElement$Property;

    if-nez v4, :cond_2

    .line 126
    new-instance v4, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v5, "invalid trigger element"

    invoke-direct {v4, v6}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 128
    :cond_2
    const-string v4, "action"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, action:Ljava/lang/String;
    const-string v4, "down"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 130
    sget-object v4, Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;->Down:Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    iput-object v4, p0, Lmiui/app/screenelement/ButtonScreenElement$Trigger;->mAction:Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    .line 141
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #property:Ljava/lang/String;
    .end local v2           #target:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 131
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #property:Ljava/lang/String;
    .restart local v2       #target:Ljava/lang/String;
    .restart local v3       #value:Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "up"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 132
    sget-object v4, Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;->Up:Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    iput-object v4, p0, Lmiui/app/screenelement/ButtonScreenElement$Trigger;->mAction:Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    goto :goto_0

    .line 133
    :cond_5
    const-string v4, "double"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 134
    sget-object v4, Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;->Double:Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    iput-object v4, p0, Lmiui/app/screenelement/ButtonScreenElement$Trigger;->mAction:Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    goto :goto_0

    .line 135
    :cond_6
    const-string v4, "long"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 136
    sget-object v4, Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;->Long:Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    iput-object v4, p0, Lmiui/app/screenelement/ButtonScreenElement$Trigger;->mAction:Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    goto :goto_0

    .line 138
    :cond_7
    new-instance v4, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v5, "invalid trigger action"

    invoke-direct {v4, v5}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public getAction()Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lmiui/app/screenelement/ButtonScreenElement$Trigger;->mAction:Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    return-object v0
.end method

.method public perform()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lmiui/app/screenelement/ButtonScreenElement$Trigger;->pro:Lmiui/app/screenelement/ButtonScreenElement$Property;

    invoke-virtual {v0}, Lmiui/app/screenelement/ButtonScreenElement$Property;->perform()V

    .line 145
    return-void
.end method
