.class public Lmiui/util/CommandLineUtils;
.super Ljava/lang/Object;
.source "CommandLineUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static addQuoteMark(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    const-string v2, "\""

    .line 66
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static chown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "file"
    .parameter "targetUser"
    .parameter "targetGroup"
    .parameter "user"

    .prologue
    .line 35
    const-string v0, "busybox chown %s.%s %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p0}, Lmiui/util/CommandLineUtils;->addQuoteMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p3, v0, v1}, Lmiui/util/CommandLineUtils;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static cp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "src"
    .parameter "dest"
    .parameter "user"

    .prologue
    .line 47
    const-string v0, "busybox cp -rf %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lmiui/util/CommandLineUtils;->addQuoteMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lmiui/util/CommandLineUtils;->addQuoteMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p2, v0, v1}, Lmiui/util/CommandLineUtils;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static mkdir(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "dir"
    .parameter "user"

    .prologue
    .line 39
    const-string v0, "busybox mkdir -p %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lmiui/util/CommandLineUtils;->addQuoteMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lmiui/util/CommandLineUtils;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static mv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "src"
    .parameter "dest"
    .parameter "user"

    .prologue
    .line 43
    const-string v0, "busybox mv -f %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lmiui/util/CommandLineUtils;->addQuoteMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lmiui/util/CommandLineUtils;->addQuoteMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p2, v0, v1}, Lmiui/util/CommandLineUtils;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static rm(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "file"
    .parameter "user"

    .prologue
    .line 51
    const-string v0, "busybox rm -r %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lmiui/util/CommandLineUtils;->addQuoteMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lmiui/util/CommandLineUtils;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static varargs run(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 7
    .parameter "async"
    .parameter "user"
    .parameter "format"
    .parameter "args"

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 59
    array-length v1, p3

    if-lez v1, :cond_0

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 60
    .local v0, cmd:Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "sh"

    aput-object v2, v1, v4

    const-string v2, "-c"

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    invoke-static {p0, v1}, Lmiui/util/CommandLineUtils;->runInner(Z[Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    :goto_1
    return-object v1

    .end local v0           #cmd:Ljava/lang/String;
    :cond_0
    move-object v0, p2

    .line 59
    goto :goto_0

    .line 60
    .restart local v0       #cmd:Ljava/lang/String;
    :cond_1
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "/system/xbin/invoke-as"

    aput-object v2, v1, v4

    const-string v2, "-u %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    invoke-static {p0, v1}, Lmiui/util/CommandLineUtils;->runInner(Z[Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_1
.end method

.method public static varargs run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 2
    .parameter "user"
    .parameter "format"
    .parameter "args"

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-static {v1, p0, p1, p2}, Lmiui/util/CommandLineUtils;->run(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static varargs runInner(Z[Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .parameter "async"
    .parameter "cmd"

    .prologue
    .line 17
    const/4 v2, 0x0

    .line 19
    .local v2, result:Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 20
    .local v1, p:Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 21
    if-nez p0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v3

    if-eqz v3, :cond_0

    .line 22
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 23
    const/4 v2, 0x0

    .line 31
    .end local v1           #p:Ljava/lang/Process;
    :cond_0
    :goto_0
    return-object v2

    .line 25
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 26
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 27
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 28
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
