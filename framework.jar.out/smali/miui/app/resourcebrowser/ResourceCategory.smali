.class public Lmiui/app/resourcebrowser/ResourceCategory;
.super Ljava/lang/Object;
.source "ResourceCategory.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lmiui/app/resourcebrowser/ResourceCategory;",
        ">;"
    }
.end annotation


# instance fields
.field private mCode:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mType:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3
    check-cast p1, Lmiui/app/resourcebrowser/ResourceCategory;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/app/resourcebrowser/ResourceCategory;->compareTo(Lmiui/app/resourcebrowser/ResourceCategory;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lmiui/app/resourcebrowser/ResourceCategory;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 37
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceCategory;->mCode:Ljava/lang/String;

    invoke-virtual {p1}, Lmiui/app/resourcebrowser/ResourceCategory;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceCategory;->mCode:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceCategory;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()J
    .locals 2

    .prologue
    .line 12
    iget-wide v0, p0, Lmiui/app/resourcebrowser/ResourceCategory;->mType:J

    return-wide v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .parameter "code"

    .prologue
    .line 24
    iput-object p1, p0, Lmiui/app/resourcebrowser/ResourceCategory;->mCode:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 32
    iput-object p1, p0, Lmiui/app/resourcebrowser/ResourceCategory;->mName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setType(J)V
    .locals 0
    .parameter "type"

    .prologue
    .line 16
    iput-wide p1, p0, Lmiui/app/resourcebrowser/ResourceCategory;->mType:J

    .line 17
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceCategory;->mName:Ljava/lang/String;

    return-object v0
.end method
