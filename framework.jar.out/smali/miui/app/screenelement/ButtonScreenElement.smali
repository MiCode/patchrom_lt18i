.class public Lmiui/app/screenelement/ButtonScreenElement;
.super Lmiui/app/screenelement/AnimatedScreenElement;
.source "ButtonScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/ButtonScreenElement$Trigger;,
        Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;,
        Lmiui/app/screenelement/ButtonScreenElement$VisibilityProperty;,
        Lmiui/app/screenelement/ButtonScreenElement$Property;,
        Lmiui/app/screenelement/ButtonScreenElement$ButtonActionListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ButtonScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "Button"


# instance fields
.field private mListener:Lmiui/app/screenelement/ButtonScreenElement$ButtonActionListener;

.field private mListenerName:Ljava/lang/String;

.field private mNormalElements:Lmiui/app/screenelement/ElementGroup;

.field private mParent:Lmiui/app/screenelement/AnimatedScreenElement;

.field private mPressed:Z

.field private mPressedElements:Lmiui/app/screenelement/ElementGroup;

.field private mPreviousTapPositionX:I

.field private mPreviousTapPositionY:I

.field private mPreviousTapUpTime:J

.field private mTriggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/ButtonScreenElement$Trigger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V
    .locals 1
    .parameter "ele"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lmiui/app/screenelement/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    .line 150
    invoke-virtual {p0, p1}, Lmiui/app/screenelement/ButtonScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 151
    if-eqz p1, :cond_0

    .line 152
    const-string v0, "listener"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    .line 154
    :cond_0
    return-void
.end method

.method private getCur()Lmiui/app/screenelement/ElementGroup;
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lmiui/app/screenelement/ButtonScreenElement;->mPressed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/screenelement/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/ElementGroup;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lmiui/app/screenelement/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/ElementGroup;

    .line 335
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/ElementGroup;

    goto :goto_0
.end method

.method private performAction(Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;)V
    .locals 3
    .parameter "action"

    .prologue
    .line 251
    iget-object v2, p0, Lmiui/app/screenelement/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/screenelement/ButtonScreenElement$Trigger;

    .line 252
    .local v1, tri:Lmiui/app/screenelement/ButtonScreenElement$Trigger;
    invoke-virtual {v1}, Lmiui/app/screenelement/ButtonScreenElement$Trigger;->getAction()Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 253
    invoke-virtual {v1}, Lmiui/app/screenelement/ButtonScreenElement$Trigger;->perform()V

    goto :goto_0

    .line 255
    .end local v1           #tri:Lmiui/app/screenelement/ButtonScreenElement$Trigger;
    :cond_1
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lmiui/app/screenelement/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/ElementGroup;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lmiui/app/screenelement/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/ElementGroup;->finish()V

    .line 319
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/ElementGroup;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lmiui/app/screenelement/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/ElementGroup;->finish()V

    .line 321
    :cond_1
    return-void
.end method

.method public init()V
    .locals 5

    .prologue
    .line 268
    iget-object v2, p0, Lmiui/app/screenelement/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/ElementGroup;

    if-eqz v2, :cond_0

    .line 269
    iget-object v2, p0, Lmiui/app/screenelement/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/ElementGroup;

    invoke-virtual {v2}, Lmiui/app/screenelement/ElementGroup;->init()V

    .line 270
    :cond_0
    iget-object v2, p0, Lmiui/app/screenelement/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/ElementGroup;

    if-eqz v2, :cond_1

    .line 271
    iget-object v2, p0, Lmiui/app/screenelement/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/ElementGroup;

    invoke-virtual {v2}, Lmiui/app/screenelement/ElementGroup;->init()V

    .line 273
    :cond_1
    iget-object v2, p0, Lmiui/app/screenelement/ButtonScreenElement;->mListener:Lmiui/app/screenelement/ButtonScreenElement$ButtonActionListener;

    if-nez v2, :cond_2

    iget-object v2, p0, Lmiui/app/screenelement/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 274
    iget-object v2, p0, Lmiui/app/screenelement/ButtonScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mRoot:Lmiui/app/screenelement/ScreenElement;

    iget-object v3, p0, Lmiui/app/screenelement/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmiui/app/screenelement/ScreenElement;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/ScreenElement;

    move-result-object v1

    .line 276
    .local v1, se:Lmiui/app/screenelement/ScreenElement;
    :try_start_0
    check-cast v1, Lmiui/app/screenelement/ButtonScreenElement$ButtonActionListener;

    .end local v1           #se:Lmiui/app/screenelement/ScreenElement;
    iput-object v1, p0, Lmiui/app/screenelement/ButtonScreenElement;->mListener:Lmiui/app/screenelement/ButtonScreenElement$ButtonActionListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :cond_2
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 278
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "ButtonScreenElement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "button listener designated by the name is not actually a listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/app/screenelement/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 11
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const-string v10, "node is null"

    const-string v9, "ButtonScreenElement"

    .line 165
    if-nez p1, :cond_0

    .line 166
    const-string v7, "ButtonScreenElement"

    const-string v7, "node is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v7, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v8, "node is null"

    invoke-direct {v7, v10}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 169
    :cond_0
    const-string v7, "Normal"

    invoke-static {p1, v7}, Lmiui/app/screenelement/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 170
    .local v3, normal:Lorg/w3c/dom/Element;
    if-eqz v3, :cond_1

    .line 171
    new-instance v7, Lmiui/app/screenelement/ElementGroup;

    iget-object v8, p0, Lmiui/app/screenelement/ButtonScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v7, v3, v8}, Lmiui/app/screenelement/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    iput-object v7, p0, Lmiui/app/screenelement/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/ElementGroup;

    .line 174
    :cond_1
    const-string v7, "Pressed"

    invoke-static {p1, v7}, Lmiui/app/screenelement/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 175
    .local v4, pressed:Lorg/w3c/dom/Element;
    if-eqz v3, :cond_2

    .line 176
    new-instance v7, Lmiui/app/screenelement/ElementGroup;

    iget-object v8, p0, Lmiui/app/screenelement/ButtonScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v7, v4, v8}, Lmiui/app/screenelement/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    iput-object v7, p0, Lmiui/app/screenelement/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/ElementGroup;

    .line 180
    :cond_2
    const-string v7, "Triggers"

    invoke-static {p1, v7}, Lmiui/app/screenelement/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 181
    .local v6, triggers:Lorg/w3c/dom/Element;
    if-eqz v6, :cond_6

    .line 182
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 183
    .local v0, children:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v1, v7, :cond_6

    .line 184
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 185
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 186
    .local v2, item:Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Trigger"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 183
    .end local v2           #item:Lorg/w3c/dom/Element;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .restart local v2       #item:Lorg/w3c/dom/Element;
    :cond_4
    new-instance v5, Lmiui/app/screenelement/ButtonScreenElement$Trigger;

    invoke-direct {v5, p0, v2}, Lmiui/app/screenelement/ButtonScreenElement$Trigger;-><init>(Lmiui/app/screenelement/ButtonScreenElement;Lorg/w3c/dom/Element;)V

    .line 190
    .local v5, trigger:Lmiui/app/screenelement/ButtonScreenElement$Trigger;
    if-eqz v5, :cond_5

    .line 191
    iget-object v7, p0, Lmiui/app/screenelement/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 193
    :cond_5
    const-string v7, "ButtonScreenElement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unrecognized element: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 198
    .end local v0           #children:Lorg/w3c/dom/NodeList;
    .end local v1           #i:I
    .end local v2           #item:Lorg/w3c/dom/Element;
    .end local v5           #trigger:Lmiui/app/screenelement/ButtonScreenElement$Trigger;
    :cond_6
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 13
    .parameter "event"

    .prologue
    .line 202
    invoke-virtual {p0}, Lmiui/app/screenelement/ButtonScreenElement;->isVisible()Z

    move-result v9

    if-nez v9, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 206
    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 207
    .local v8, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 209
    :pswitch_0
    invoke-virtual {p0, v7, v8}, Lmiui/app/screenelement/ButtonScreenElement;->touched(II)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 210
    const/4 v9, 0x1

    iput-boolean v9, p0, Lmiui/app/screenelement/ButtonScreenElement;->mPressed:Z

    .line 211
    iget-object v9, p0, Lmiui/app/screenelement/ButtonScreenElement;->mListener:Lmiui/app/screenelement/ButtonScreenElement$ButtonActionListener;

    if-eqz v9, :cond_2

    .line 212
    iget-object v9, p0, Lmiui/app/screenelement/ButtonScreenElement;->mListener:Lmiui/app/screenelement/ButtonScreenElement$ButtonActionListener;

    iget-object v10, p0, Lmiui/app/screenelement/ButtonScreenElement;->mName:Ljava/lang/String;

    invoke-interface {v9, v10}, Lmiui/app/screenelement/ButtonScreenElement$ButtonActionListener;->onButtonDown(Ljava/lang/String;)Z

    .line 214
    :cond_2
    sget-object v9, Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;->Down:Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    invoke-direct {p0, v9}, Lmiui/app/screenelement/ButtonScreenElement;->performAction(Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;)V

    .line 216
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Lmiui/app/screenelement/ButtonScreenElement;->mPreviousTapUpTime:J

    sub-long v4, v9, v11

    .line 217
    .local v4, duration:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v9

    int-to-long v9, v9

    cmp-long v9, v4, v9

    if-gtz v9, :cond_4

    .line 218
    iget v9, p0, Lmiui/app/screenelement/ButtonScreenElement;->mPreviousTapPositionX:I

    sub-int v0, v7, v9

    .line 219
    .local v0, deltaX:I
    iget v9, p0, Lmiui/app/screenelement/ButtonScreenElement;->mPreviousTapPositionY:I

    sub-int v1, v8, v9

    .line 220
    .local v1, deltaY:I
    mul-int v9, v0, v0

    mul-int v10, v1, v1

    add-int v2, v9, v10

    .line 221
    .local v2, distanceSquared:I
    iget-object v9, p0, Lmiui/app/screenelement/ButtonScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v9, v9, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v3

    .line 222
    .local v3, doubleTapSlop:I
    mul-int v6, v3, v3

    .line 223
    .local v6, slopSquared:I
    if-ge v2, v6, :cond_4

    .line 224
    iget-object v9, p0, Lmiui/app/screenelement/ButtonScreenElement;->mListener:Lmiui/app/screenelement/ButtonScreenElement$ButtonActionListener;

    if-eqz v9, :cond_3

    .line 225
    iget-object v9, p0, Lmiui/app/screenelement/ButtonScreenElement;->mListener:Lmiui/app/screenelement/ButtonScreenElement$ButtonActionListener;

    iget-object v10, p0, Lmiui/app/screenelement/ButtonScreenElement;->mName:Ljava/lang/String;

    invoke-interface {v9, v10}, Lmiui/app/screenelement/ButtonScreenElement$ButtonActionListener;->onButtonDoubleClick(Ljava/lang/String;)Z

    .line 227
    :cond_3
    sget-object v9, Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;->Double:Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    invoke-direct {p0, v9}, Lmiui/app/screenelement/ButtonScreenElement;->performAction(Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;)V

    .line 230
    .end local v0           #deltaX:I
    .end local v1           #deltaY:I
    .end local v2           #distanceSquared:I
    .end local v3           #doubleTapSlop:I
    .end local v6           #slopSquared:I
    :cond_4
    iput v7, p0, Lmiui/app/screenelement/ButtonScreenElement;->mPreviousTapPositionX:I

    .line 231
    iput v8, p0, Lmiui/app/screenelement/ButtonScreenElement;->mPreviousTapPositionY:I

    goto :goto_0

    .line 235
    .end local v4           #duration:J
    :pswitch_1
    invoke-virtual {p0, v7, v8}, Lmiui/app/screenelement/ButtonScreenElement;->touched(II)Z

    move-result v9

    iput-boolean v9, p0, Lmiui/app/screenelement/ButtonScreenElement;->mPressed:Z

    goto :goto_0

    .line 238
    :pswitch_2
    invoke-virtual {p0, v7, v8}, Lmiui/app/screenelement/ButtonScreenElement;->touched(II)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 239
    iget-object v9, p0, Lmiui/app/screenelement/ButtonScreenElement;->mListener:Lmiui/app/screenelement/ButtonScreenElement$ButtonActionListener;

    if-eqz v9, :cond_5

    .line 240
    iget-object v9, p0, Lmiui/app/screenelement/ButtonScreenElement;->mListener:Lmiui/app/screenelement/ButtonScreenElement$ButtonActionListener;

    iget-object v10, p0, Lmiui/app/screenelement/ButtonScreenElement;->mName:Ljava/lang/String;

    invoke-interface {v9, v10}, Lmiui/app/screenelement/ButtonScreenElement$ButtonActionListener;->onButtonUp(Ljava/lang/String;)Z

    .line 242
    :cond_5
    sget-object v9, Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;->Up:Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    invoke-direct {p0, v9}, Lmiui/app/screenelement/ButtonScreenElement;->performAction(Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;)V

    .line 243
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lmiui/app/screenelement/ButtonScreenElement;->mPreviousTapUpTime:J

    .line 245
    :cond_6
    const/4 v9, 0x0

    iput-boolean v9, p0, Lmiui/app/screenelement/ButtonScreenElement;->mPressed:Z

    goto/16 :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lmiui/app/screenelement/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/ElementGroup;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lmiui/app/screenelement/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/ElementGroup;->pause()V

    .line 286
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/ElementGroup;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lmiui/app/screenelement/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/ElementGroup;->pause()V

    .line 288
    :cond_1
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 299
    invoke-virtual {p0}, Lmiui/app/screenelement/ButtonScreenElement;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    invoke-direct {p0}, Lmiui/app/screenelement/ButtonScreenElement;->getCur()Lmiui/app/screenelement/ElementGroup;

    move-result-object v0

    .line 302
    .local v0, cur:Lmiui/app/screenelement/ElementGroup;
    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0, p1}, Lmiui/app/screenelement/ElementGroup;->render(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lmiui/app/screenelement/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/ElementGroup;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lmiui/app/screenelement/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/ElementGroup;->resume()V

    .line 293
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/ElementGroup;

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lmiui/app/screenelement/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/ElementGroup;

    invoke-virtual {v0}, Lmiui/app/screenelement/ElementGroup;->resume()V

    .line 295
    :cond_1
    return-void
.end method

.method public setListener(Lmiui/app/screenelement/ButtonScreenElement$ButtonActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 161
    iput-object p1, p0, Lmiui/app/screenelement/ButtonScreenElement;->mListener:Lmiui/app/screenelement/ButtonScreenElement$ButtonActionListener;

    .line 162
    return-void
.end method

.method public setParent(Lmiui/app/screenelement/AnimatedScreenElement;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 157
    iput-object p1, p0, Lmiui/app/screenelement/ButtonScreenElement;->mParent:Lmiui/app/screenelement/AnimatedScreenElement;

    .line 158
    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 1
    .parameter "category"
    .parameter "show"

    .prologue
    .line 325
    iget-object v0, p0, Lmiui/app/screenelement/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/ElementGroup;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lmiui/app/screenelement/ButtonScreenElement;->mNormalElements:Lmiui/app/screenelement/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 327
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/ElementGroup;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lmiui/app/screenelement/ButtonScreenElement;->mPressedElements:Lmiui/app/screenelement/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 329
    :cond_1
    return-void
.end method

.method public tick(J)V
    .locals 2
    .parameter "currentTime"

    .prologue
    .line 308
    invoke-virtual {p0}, Lmiui/app/screenelement/ButtonScreenElement;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    invoke-direct {p0}, Lmiui/app/screenelement/ButtonScreenElement;->getCur()Lmiui/app/screenelement/ElementGroup;

    move-result-object v0

    .line 311
    .local v0, cur:Lmiui/app/screenelement/ElementGroup;
    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0, p1, p2}, Lmiui/app/screenelement/ElementGroup;->tick(J)V

    goto :goto_0
.end method

.method public touched(II)Z
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x0

    .line 258
    iget-object v4, p0, Lmiui/app/screenelement/ButtonScreenElement;->mParent:Lmiui/app/screenelement/AnimatedScreenElement;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmiui/app/screenelement/ButtonScreenElement;->mParent:Lmiui/app/screenelement/AnimatedScreenElement;

    invoke-virtual {v4}, Lmiui/app/screenelement/AnimatedScreenElement;->getX()I

    move-result v4

    move v0, v4

    .line 259
    .local v0, parentX:I
    :goto_0
    iget-object v4, p0, Lmiui/app/screenelement/ButtonScreenElement;->mParent:Lmiui/app/screenelement/AnimatedScreenElement;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lmiui/app/screenelement/ButtonScreenElement;->mParent:Lmiui/app/screenelement/AnimatedScreenElement;

    invoke-virtual {v4}, Lmiui/app/screenelement/AnimatedScreenElement;->getY()I

    move-result v4

    move v1, v4

    .line 260
    .local v1, parentY:I
    :goto_1
    iget-object v4, p0, Lmiui/app/screenelement/ButtonScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v4}, Lmiui/app/screenelement/AnimatedElement;->getX()I

    move-result v2

    .line 261
    .local v2, x0:I
    iget-object v4, p0, Lmiui/app/screenelement/ButtonScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v4}, Lmiui/app/screenelement/AnimatedElement;->getY()I

    move-result v3

    .line 262
    .local v3, y0:I
    add-int v4, v0, v2

    if-lt p1, v4, :cond_2

    add-int v4, v0, v2

    iget-object v5, p0, Lmiui/app/screenelement/ButtonScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v5}, Lmiui/app/screenelement/AnimatedElement;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    if-gt p1, v4, :cond_2

    add-int v4, v1, v3

    if-lt p2, v4, :cond_2

    add-int v4, v1, v3

    iget-object v5, p0, Lmiui/app/screenelement/ButtonScreenElement;->mAni:Lmiui/app/screenelement/AnimatedElement;

    invoke-virtual {v5}, Lmiui/app/screenelement/AnimatedElement;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    if-gt p2, v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    return v4

    .end local v0           #parentX:I
    .end local v1           #parentY:I
    .end local v2           #x0:I
    .end local v3           #y0:I
    :cond_0
    move v0, v6

    .line 258
    goto :goto_0

    .restart local v0       #parentX:I
    :cond_1
    move v1, v6

    .line 259
    goto :goto_1

    .restart local v1       #parentY:I
    .restart local v2       #x0:I
    .restart local v3       #y0:I
    :cond_2
    move v4, v6

    .line 262
    goto :goto_2
.end method
