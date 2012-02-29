.class final Lmiui/app/resourcebrowser/OnlineHelper$1;
.super Landroid/os/AsyncTask;
.source "OnlineHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/resourcebrowser/OnlineHelper;->sendUserAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lmiui/app/resourcebrowser/OnlineHelper$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/app/resourcebrowser/OnlineHelper$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "params"

    .prologue
    .line 147
    :try_start_0
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineHelper$1;->val$url:Ljava/lang/String;

    invoke-static {v0}, Lmiui/app/resourcebrowser/OnlineHelper;->getURLInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 148
    :catch_0
    move-exception v0

    goto :goto_0
.end method
