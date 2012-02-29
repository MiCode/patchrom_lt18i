.class public Lmiui/app/screenelement/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/Utils$Point;,
        Lmiui/app/screenelement/Utils$GetChildWrapper;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Dist(Lmiui/app/screenelement/Utils$Point;Lmiui/app/screenelement/Utils$Point;Z)D
    .locals 8
    .parameter "a"
    .parameter "b"
    .parameter "sqr"

    .prologue
    .line 95
    iget-wide v4, p0, Lmiui/app/screenelement/Utils$Point;->x:D

    iget-wide v6, p1, Lmiui/app/screenelement/Utils$Point;->x:D

    sub-double v0, v4, v6

    .line 96
    .local v0, x:D
    iget-wide v4, p0, Lmiui/app/screenelement/Utils$Point;->y:D

    iget-wide v6, p1, Lmiui/app/screenelement/Utils$Point;->y:D

    sub-double v2, v4, v6

    .line 97
    .local v2, y:D
    if-eqz p2, :cond_0

    .line 98
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 100
    :goto_0
    return-wide v4

    :cond_0
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    goto :goto_0
.end method

.method public static asserts(Z)V
    .locals 1
    .parameter "t"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 19
    const-string v0, "assert error"

    invoke-static {p0, v0}, Lmiui/app/screenelement/Utils;->asserts(ZLjava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asserts(ZLjava/lang/String;)V
    .locals 1
    .parameter "t"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    new-instance v0, Lmiui/app/screenelement/ScreenElementLoadException;

    invoke-direct {v0, p1}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_0
    return-void
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 104
    if-eq p0, p1, :cond_2

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I
    .locals 2
    .parameter "ele"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 30
    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 32
    :goto_0
    return v1

    .line 31
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/NumberFormatException;
    move v1, p2

    .line 32
    goto :goto_0
.end method

.method public static getAttrAsIntThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)I
    .locals 6
    .parameter "ele"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 11
    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 12
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 13
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v1, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v2, "fail to get attribute name: %s of Element %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAttrAsLong(Lorg/w3c/dom/Element;Ljava/lang/String;J)J
    .locals 3
    .parameter "ele"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 39
    :try_start_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 41
    :goto_0
    return-wide v1

    .line 40
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/NumberFormatException;
    move-wide v1, p2

    .line 41
    goto :goto_0
.end method

.method public static getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 6
    .parameter "ele"
    .parameter "name"

    .prologue
    const/4 v5, 0x0

    .line 63
    if-nez p0, :cond_0

    move-object v3, v5

    .line 73
    :goto_0
    return-object v3

    .line 66
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 67
    .local v2, nl:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 68
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 69
    .local v1, item:Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    check-cast v1, Lorg/w3c/dom/Element;

    .end local v1           #item:Lorg/w3c/dom/Node;
    move-object v3, v1

    goto :goto_0

    .line 67
    .restart local v1       #item:Lorg/w3c/dom/Node;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #item:Lorg/w3c/dom/Node;
    :cond_2
    move-object v3, v5

    .line 73
    goto :goto_0
.end method

.method public static pointProjectionOnSegment(Lmiui/app/screenelement/Utils$Point;Lmiui/app/screenelement/Utils$Point;Lmiui/app/screenelement/Utils$Point;Z)Lmiui/app/screenelement/Utils$Point;
    .locals 7
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "nearestEnd"

    .prologue
    .line 111
    invoke-virtual {p1, p0}, Lmiui/app/screenelement/Utils$Point;->minus(Lmiui/app/screenelement/Utils$Point;)Lmiui/app/screenelement/Utils$Point;

    move-result-object v0

    .line 112
    .local v0, AB:Lmiui/app/screenelement/Utils$Point;
    invoke-virtual {p2, p0}, Lmiui/app/screenelement/Utils$Point;->minus(Lmiui/app/screenelement/Utils$Point;)Lmiui/app/screenelement/Utils$Point;

    move-result-object p2

    .line 113
    .local p2, AC:Lmiui/app/screenelement/Utils$Point;
    iget-wide v1, v0, Lmiui/app/screenelement/Utils$Point;->x:D

    iget-wide v3, p2, Lmiui/app/screenelement/Utils$Point;->x:D

    mul-double/2addr v1, v3

    iget-wide v3, v0, Lmiui/app/screenelement/Utils$Point;->y:D

    iget-wide v5, p2, Lmiui/app/screenelement/Utils$Point;->y:D

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    .line 114
    .local v1, r:D
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lmiui/app/screenelement/Utils;->Dist(Lmiui/app/screenelement/Utils$Point;Lmiui/app/screenelement/Utils$Point;Z)D

    .end local p2           #AC:Lmiui/app/screenelement/Utils$Point;
    move-result-wide v3

    div-double/2addr v1, v3

    .line 115
    const-wide/16 v3, 0x0

    cmpg-double p2, v1, v3

    if-ltz p2, :cond_0

    const-wide/high16 v3, 0x3ff0

    cmpl-double p2, v1, v3

    if-lez p2, :cond_3

    .line 116
    :cond_0
    if-nez p3, :cond_2

    const/4 p0, 0x0

    .line 122
    .end local p0
    .end local p1
    :cond_1
    :goto_0
    return-object p0

    .line 116
    .restart local p0
    .restart local p1
    :cond_2
    const-wide/16 p2, 0x0

    cmpg-double p2, v1, p2

    if-ltz p2, :cond_1

    move-object p0, p1

    goto :goto_0

    .line 118
    :cond_3
    move-object p1, v0

    .line 119
    .local p1, D:Lmiui/app/screenelement/Utils$Point;
    iget-wide p2, p1, Lmiui/app/screenelement/Utils$Point;->x:D

    mul-double/2addr p2, v1

    iput-wide p2, p1, Lmiui/app/screenelement/Utils$Point;->x:D

    .line 120
    iget-wide p2, p1, Lmiui/app/screenelement/Utils$Point;->y:D

    mul-double/2addr p2, v1

    iput-wide p2, p1, Lmiui/app/screenelement/Utils$Point;->y:D

    .line 121
    invoke-virtual {p1, p0}, Lmiui/app/screenelement/Utils$Point;->Offset(Lmiui/app/screenelement/Utils$Point;)V

    move-object p0, p1

    .line 122
    goto :goto_0
.end method
