.class public Lcom/tappx/a/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/j0$b;,
        Lcom/tappx/a/j0$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Lcom/tappx/a/j0$c;

.field private static c:Z

.field private static d:J

.field private static e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tappx/a/j0$b;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Lcom/tappx/a/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "com.tappx"

    .line 1
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/tappx/a/j0;->a:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Lcom/tappx/a/j0$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tappx/a/j0$c;-><init>(Lcom/tappx/a/j0$a;)V

    sput-object v0, Lcom/tappx/a/j0;->b:Lcom/tappx/a/j0$c;

    .line 6
    sget-object v0, Lcom/tappx/a/j0;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 7
    sget-object v0, Lcom/tappx/a/j0;->a:Ljava/util/logging/Logger;

    sget-object v1, Lcom/tappx/a/j0;->b:Lcom/tappx/a/j0$c;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 8
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    sget-object v1, Lcom/tappx/a/j0;->a:Ljava/util/logging/Logger;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogManager;->addLogger(Ljava/util/logging/Logger;)Z

    const/4 v0, 0x0

    .line 57
    sput-boolean v0, Lcom/tappx/a/j0;->c:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    if-nez p0, :cond_6

    const/4 p0, 0x0

    .line 3
    sput-object p0, Lcom/tappx/a/j0;->f:Lcom/tappx/a/f;

    goto :goto_d

    .line 5
    :cond_6
    new-instance v0, Lcom/tappx/a/f;

    invoke-direct {v0, p0}, Lcom/tappx/a/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tappx/a/j0;->f:Lcom/tappx/a/f;

    :goto_d
    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 1
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {v0, p0, p1}, Lcom/tappx/a/j0;->a(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs a(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 2
    :try_start_0
    sget-object v0, Lcom/tappx/a/j0;->a:Ljava/util/logging/Logger;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 1
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tappx Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/tappx/a/j0;->a(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .line 1
    sget-boolean v0, Lcom/tappx/a/j0;->c:Z

    if-eqz v0, :cond_2d

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/tappx/a/j0;->d:J

    sub-long/2addr v0, v2

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/tappx/a/j0;->d:J

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms) "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Lcom/tappx/a/j0;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    :cond_2d
    :try_start_2d
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 10
    sget-object p1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lcom/tappx/a/j0;->a(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_39} :catch_39

    :catch_39
    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/tappx/a/j0;->f:Lcom/tappx/a/f;

    if-nez v0, :cond_5

    return-void

    .line 4
    :cond_5
    invoke-virtual {v0, p0}, Lcom/tappx/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Lcom/tappx/a/j0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static e(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/tappx/a/j0;->e:Ljava/util/Set;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tappx/a/j0$b;

    if-eqz v1, :cond_9

    .line 4
    :try_start_17
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tappx/a/j0$b;->a(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_9

    :catch_1f
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :cond_24
    return-void
.end method

.method public static varargs f(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 1
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, p0, p1}, Lcom/tappx/a/j0;->a(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
