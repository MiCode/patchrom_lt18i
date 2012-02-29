.class Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;
.super Ljava/lang/Object;
.source "VariableBinderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/VariableBinderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentProviderBinder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder$MyDataSetObserver;,
        Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder$ChangeObserver;,
        Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder$QueryHandler;
    }
.end annotation


# static fields
.field private static final QUERY_TOKEN:I = 0x64

.field public static final TAG_NAME:Ljava/lang/String; = "ContentProviderBinder"


# instance fields
.field public mArgs:[Ljava/lang/String;

.field public mChangeObserver:Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder$ChangeObserver;

.field public mColumns:[Ljava/lang/String;

.field private mContext:Lmiui/app/screenelement/ScreenContext;

.field public mCountName:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field public mOrder:Ljava/lang/String;

.field private mQueryHandler:Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder$QueryHandler;

.field public mUri:Landroid/net/Uri;

.field private mVariables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/VariableBinderManager$Variable;",
            ">;"
        }
    .end annotation
.end field

.field public mWhere:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V
    .locals 2
    .parameter "node"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder$ChangeObserver;

    invoke-direct {v0, p0}, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder$ChangeObserver;-><init>(Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;)V

    iput-object v0, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mChangeObserver:Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder$ChangeObserver;

    .line 103
    new-instance v0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder$MyDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder$MyDataSetObserver;-><init>(Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;Lmiui/app/screenelement/VariableBinderManager$1;)V

    iput-object v0, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 106
    invoke-direct {p0, p1}, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->load(Lorg/w3c/dom/Element;)V

    .line 107
    iput-object p2, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mContext:Lmiui/app/screenelement/ScreenContext;

    .line 108
    new-instance v0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder$QueryHandler;

    iget-object v1, p2, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder$QueryHandler;-><init>(Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mQueryHandler:Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder$QueryHandler;

    .line 109
    return-void
.end method

.method static synthetic access$100(Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->onQueryComplete(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$200(Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->updateVariables()V

    return-void
.end method

.method private closeCursor()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mChangeObserver:Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 122
    iget-object v0, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 123
    iget-object v0, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 125
    :cond_0
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 4
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string v3, ","

    .line 128
    if-nez p1, :cond_0

    .line 129
    const-string v1, "VariableBinderManager"

    const-string v2, "ContentProviderBinder node is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v1, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v2, "node is null"

    invoke-direct {v1, v2}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_0
    const-string/jumbo v1, "uri"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mUri:Landroid/net/Uri;

    .line 134
    const-string v1, "columns"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, tmp:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mColumns:[Ljava/lang/String;

    .line 136
    const-string/jumbo v1, "where"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v2

    :goto_1
    iput-object v1, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mWhere:Ljava/lang/String;

    .line 138
    const-string v1, "args"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v2

    :goto_2
    iput-object v1, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mArgs:[Ljava/lang/String;

    .line 140
    const-string v1, "order"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v2

    :goto_3
    iput-object v1, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mOrder:Ljava/lang/String;

    .line 143
    const-string v1, "countName"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, v2

    :goto_4
    iput-object v1, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mCountName:Ljava/lang/String;

    .line 146
    invoke-direct {p0, p1}, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    .line 147
    return-void

    .line 135
    :cond_1
    const-string v1, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 137
    goto :goto_1

    .line 139
    :cond_3
    const-string v1, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v1, v0

    .line 141
    goto :goto_3

    :cond_5
    move-object v1, v0

    .line 144
    goto :goto_4
.end method

.method private loadVariables(Lorg/w3c/dom/Element;)V
    .locals 5
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 150
    const-string v2, "Variable"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 151
    .local v1, variables:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 152
    iget-object v3, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    new-instance v4, Lmiui/app/screenelement/VariableBinderManager$Variable;

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-direct {v4, v2}, Lmiui/app/screenelement/VariableBinderManager$Variable;-><init>(Lorg/w3c/dom/Element;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method

.method private onQueryComplete(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 203
    invoke-direct {p0}, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->closeCursor()V

    .line 205
    iput-object p1, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    .line 206
    iget-object v0, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mChangeObserver:Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 208
    iget-object v0, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 209
    invoke-direct {p0}, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->updateVariables()V

    .line 211
    :cond_0
    return-void
.end method

.method private startQuery()V
    .locals 8

    .prologue
    const/16 v1, 0x64

    .line 157
    iget-object v0, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mQueryHandler:Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder$QueryHandler;

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder$QueryHandler;->cancelOperation(I)V

    .line 158
    iget-object v0, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mQueryHandler:Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder$QueryHandler;

    const/4 v2, 0x0

    iget-object v3, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mColumns:[Ljava/lang/String;

    iget-object v5, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mWhere:Ljava/lang/String;

    iget-object v6, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mArgs:[Ljava/lang/String;

    iget-object v7, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method private updateVariables()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    const-string v12, "VariableBinderManager"

    .line 214
    iget-object v7, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v6, v7, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    .line 215
    .local v6, vars:Lmiui/app/screenelement/Variables;
    iget-object v7, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    if-nez v7, :cond_1

    move v1, v11

    .line 216
    .local v1, count:I
    :goto_0
    iget-object v7, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mCountName:Ljava/lang/String;

    int-to-double v8, v1

    invoke-virtual {v6, v7, v8, v9}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;D)V

    .line 217
    iget-object v7, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_0

    if-nez v1, :cond_2

    .line 243
    :cond_0
    return-void

    .line 215
    .end local v1           #count:I
    :cond_1
    iget-object v7, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v7

    move v1, v7

    goto :goto_0

    .line 220
    .restart local v1       #count:I
    :cond_2
    iget-object v7, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/app/screenelement/VariableBinderManager$Variable;

    .line 221
    .local v5, v:Lmiui/app/screenelement/VariableBinderManager$Variable;
    iget-object v7, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    iget v8, v5, Lmiui/app/screenelement/VariableBinderManager$Variable;->mRow:I

    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 222
    const-string/jumbo v7, "uri:%s name:%s type:%s row:%d column:%d"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x1

    iget-object v10, v5, Lmiui/app/screenelement/VariableBinderManager$Variable;->mName:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, v5, Lmiui/app/screenelement/VariableBinderManager$Variable;->mType:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget v10, v5, Lmiui/app/screenelement/VariableBinderManager$Variable;->mRow:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    iget v10, v5, Lmiui/app/screenelement/VariableBinderManager$Variable;->mColumn:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, info:Ljava/lang/String;
    const-string v7, "VariableBinderManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateVariables: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :try_start_0
    iget v0, v5, Lmiui/app/screenelement/VariableBinderManager$Variable;->mColumn:I

    .line 227
    .local v0, col:I
    const-string/jumbo v7, "string"

    iget-object v8, v5, Lmiui/app/screenelement/VariableBinderManager$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 228
    iget-object v7, v5, Lmiui/app/screenelement/VariableBinderManager$Variable;->mName:Ljava/lang/String;

    iget-object v8, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lmiui/app/screenelement/Variables;->putStr(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 238
    .end local v0           #col:I
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 239
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v7, "VariableBinderManager"

    const-string v7, "failed to get value from cursor"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 229
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #col:I
    :cond_4
    :try_start_1
    const-string v7, "double"

    iget-object v8, v5, Lmiui/app/screenelement/VariableBinderManager$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 230
    iget-object v7, v5, Lmiui/app/screenelement/VariableBinderManager$Variable;->mName:Ljava/lang/String;

    iget-object v8, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;D)V

    goto/16 :goto_1

    .line 231
    :cond_5
    const-string v7, "float"

    iget-object v8, v5, Lmiui/app/screenelement/VariableBinderManager$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 232
    iget-object v7, v5, Lmiui/app/screenelement/VariableBinderManager$Variable;->mName:Ljava/lang/String;

    iget-object v8, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {v6, v7, v8, v9}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;D)V

    goto/16 :goto_1

    .line 233
    :cond_6
    const-string v7, "int"

    iget-object v8, v5, Lmiui/app/screenelement/VariableBinderManager$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 234
    iget-object v7, v5, Lmiui/app/screenelement/VariableBinderManager$Variable;->mName:Ljava/lang/String;

    iget-object v8, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v6, v7, v8, v9}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;D)V

    goto/16 :goto_1

    .line 235
    :cond_7
    const-string v7, "long"

    iget-object v8, v5, Lmiui/app/screenelement/VariableBinderManager$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 236
    iget-object v7, v5, Lmiui/app/screenelement/VariableBinderManager$Variable;->mName:Ljava/lang/String;

    iget-object v8, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    long-to-double v8, v8

    invoke-virtual {v6, v7, v8, v9}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;D)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->closeCursor()V

    .line 117
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->startQuery()V

    .line 113
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 263
    const-string v0, "VariableBinderManager"

    const-string v1, "ChangeObserver: content changed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 266
    :cond_0
    return-void
.end method
