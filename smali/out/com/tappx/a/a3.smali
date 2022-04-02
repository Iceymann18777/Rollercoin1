.class public Lcom/tappx/a/a3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "token"

    .line 1
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7e

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_7e

    :cond_10
    const/4 v1, -0x1

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x8f0631a

    if-eq v2, v3, :cond_1b

    goto :goto_24

    :cond_1b
    const-string v2, "TAPPX_INSTALL_GETCLASS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_7f

    if-eqz p2, :cond_24

    const/4 v1, 0x0

    :cond_24
    :goto_24
    if-eqz v1, :cond_28

    goto/16 :goto_a4

    :cond_28
    const-string p2, "BroadcastReceiverStackTrace: Start"

    :try_start_2a
    new-array v1, v0, [Ljava/lang/Object;

    .line 5
    invoke-static {p2, v1}, Lcom/tappx/a/j0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    .line 7
    array-length v1, p2

    const/4 v2, 0x0

    :goto_39
    if-ge v2, v1, :cond_a4

    aget-object v3, p2, v2
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3d} :catch_7f

    .line 9
    :try_start_3d
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onReceive"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BroadcastReceiverStackTrace: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tappx/a/j0;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_7b} :catch_7b

    :catch_7b
    :cond_7b
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_7e
    :goto_7e
    return-void

    :catch_7f
    move-exception p1

    new-array p2, v0, [Ljava/lang/Object;

    const-string v1, "no string token"

    .line 17
    invoke-static {v1, p2}, Lcom/tappx/a/j0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR01: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/tappx/a/j0;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a4
    :goto_a4
    return-void
.end method

.method private c(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/tappx/sdk/android/TrackInstallReceiver;

    .line 2
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v3, 0x80

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-nez v1, :cond_19

    return-void

    .line 6
    :cond_19
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_1e

    return-void

    .line 8
    :cond_1e
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_25

    return-void

    .line 10
    :cond_25
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_29
    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_29

    .line 11
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3e

    goto :goto_29

    .line 12
    :cond_3e
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_42
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_42} :catch_71

    .line 15
    :try_start_42
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, p1, p2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_4f
    .catch Ljava/lang/InstantiationException; {:try_start_42 .. :try_end_4f} :catch_66
    .catch Ljava/lang/IllegalAccessException; {:try_start_42 .. :try_end_4f} :catch_5b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_42 .. :try_end_4f} :catch_50
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_42 .. :try_end_4f} :catch_71

    goto :goto_29

    :catch_50
    move-exception v3

    .line 21
    :try_start_51
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tappx/a/j0;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_29

    :catch_5b
    move-exception v3

    .line 22
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tappx/a/j0;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_29

    :catch_66
    move-exception v3

    .line 23
    invoke-virtual {v3}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tappx/a/j0;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_70
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_51 .. :try_end_70} :catch_71

    goto :goto_29

    :catch_71
    move-exception p1

    .line 31
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tappx/a/j0;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7b
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tappx/a/a3;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2
    invoke-static {p1}, Lcom/tappx/a/c;->a(Landroid/content/Context;)Lcom/tappx/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tappx/a/c;->m()Lcom/tappx/a/y2;

    move-result-object v0

    .line 3
    invoke-interface {v0, p2}, Lcom/tappx/a/y2;->a(Landroid/content/Intent;)V

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/tappx/a/a3;->c(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
