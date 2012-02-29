.class abstract Lmiui/app/screenelement/TextScreenElement$FormatPara;
.super Ljava/lang/Object;
.source "TextScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/TextScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "FormatPara"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/app/screenelement/TextScreenElement$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lmiui/app/screenelement/TextScreenElement$FormatPara;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/String;)Lmiui/app/screenelement/TextScreenElement$FormatPara;
    .locals 5
    .parameter "para"

    .prologue
    .line 65
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, exp:Ljava/lang/String;
    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    new-instance v2, Lmiui/app/screenelement/TextScreenElement$StringVarPara;

    new-instance v3, Lmiui/app/screenelement/Variable;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lmiui/app/screenelement/Variable;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lmiui/app/screenelement/TextScreenElement$StringVarPara;-><init>(Lmiui/app/screenelement/Variable;)V

    .line 74
    :goto_0
    return-object v2

    .line 69
    :cond_0
    invoke-static {v0}, Lmiui/app/screenelement/Expression;->build(Ljava/lang/String;)Lmiui/app/screenelement/Expression;

    move-result-object v1

    .line 70
    .local v1, expression:Lmiui/app/screenelement/Expression;
    if-nez v1, :cond_1

    .line 71
    const-string v2, "TextScreenElement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid parameter expression:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v2, 0x0

    goto :goto_0

    .line 74
    :cond_1
    new-instance v2, Lmiui/app/screenelement/TextScreenElement$ExpressioPara;

    invoke-direct {v2, v1}, Lmiui/app/screenelement/TextScreenElement$ExpressioPara;-><init>(Lmiui/app/screenelement/Expression;)V

    goto :goto_0
.end method

.method public static buildArray(Ljava/lang/String;)[Lmiui/app/screenelement/TextScreenElement$FormatPara;
    .locals 9
    .parameter "exp"

    .prologue
    const/4 v8, 0x0

    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, bracketCount:I
    const/4 v6, 0x0

    .line 38
    .local v6, start:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v2, exps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/app/screenelement/TextScreenElement$FormatPara;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 40
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 41
    .local v1, c:C
    if-nez v0, :cond_1

    .line 42
    const/16 v7, 0x2c

    if-ne v1, v7, :cond_1

    .line 43
    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmiui/app/screenelement/TextScreenElement$FormatPara;->build(Ljava/lang/String;)Lmiui/app/screenelement/TextScreenElement$FormatPara;

    move-result-object v4

    .line 44
    .local v4, para:Lmiui/app/screenelement/TextScreenElement$FormatPara;
    if-nez v4, :cond_0

    move-object v7, v8

    .line 62
    .end local v1           #c:C
    .end local p0
    :goto_1
    return-object v7

    .line 46
    .restart local v1       #c:C
    .restart local p0
    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v6, v3, 0x1

    .line 50
    .end local v4           #para:Lmiui/app/screenelement/TextScreenElement$FormatPara;
    :cond_1
    const/16 v7, 0x28

    if-ne v1, v7, :cond_3

    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 39
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 52
    :cond_3
    const/16 v7, 0x29

    if-ne v1, v7, :cond_2

    .line 53
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 56
    .end local v1           #c:C
    :cond_4
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmiui/app/screenelement/TextScreenElement$FormatPara;->build(Ljava/lang/String;)Lmiui/app/screenelement/TextScreenElement$FormatPara;

    move-result-object v4

    .line 57
    .restart local v4       #para:Lmiui/app/screenelement/TextScreenElement$FormatPara;
    if-nez v4, :cond_5

    move-object v7, v8

    .line 58
    goto :goto_1

    .line 60
    :cond_5
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Lmiui/app/screenelement/TextScreenElement$FormatPara;

    .line 62
    .local v5, ret:[Lmiui/app/screenelement/TextScreenElement$FormatPara;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lmiui/app/screenelement/TextScreenElement$FormatPara;

    move-object v7, p0

    goto :goto_1
.end method


# virtual methods
.method public abstract evaluate(Lmiui/app/screenelement/Variables;)Ljava/lang/Object;
.end method
