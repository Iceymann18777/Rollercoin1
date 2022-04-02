.class public Lcom/tappx/a/j4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/j4$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Lcom/tappx/a/j4$b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "com.tappx.mraid"

    .line 1
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/tappx/a/j4;->a:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Lcom/tappx/a/j4$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tappx/a/j4$b;-><init>(Lcom/tappx/a/j4$a;)V

    sput-object v0, Lcom/tappx/a/j4;->b:Lcom/tappx/a/j4$b;

    .line 9
    sget-object v0, Lcom/tappx/a/j4;->a:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V

    .line 10
    sget-object v0, Lcom/tappx/a/j4;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 11
    sget-object v0, Lcom/tappx/a/j4;->b:Lcom/tappx/a/j4$b;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Handler;->setLevel(Ljava/util/logging/Level;)V

    .line 12
    sget-object v0, Lcom/tappx/a/j4;->b:Lcom/tappx/a/j4$b;

    new-instance v1, Lcom/tappx/a/j4$a;

    invoke-direct {v1}, Lcom/tappx/a/j4$a;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/logging/Handler;->setFilter(Ljava/util/logging/Filter;)V

    .line 19
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    sget-object v1, Lcom/tappx/a/j4;->a:Ljava/util/logging/Logger;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogManager;->addLogger(Ljava/util/logging/Logger;)Z

    .line 20
    sget-object v0, Lcom/tappx/a/j4;->a:Ljava/util/logging/Logger;

    sget-object v1, Lcom/tappx/a/j4;->b:Lcom/tappx/a/j4$b;

    invoke-static {v0, v1}, Lcom/tappx/a/j4;->a(Ljava/util/logging/Logger;Ljava/util/logging/Handler;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/tappx/a/j4;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 2
    sget-object v0, Lcom/tappx/a/j4;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static a(Ljava/util/logging/Logger;Ljava/util/logging/Handler;)V
    .registers 6

    .line 3
    invoke-virtual {p0}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v0

    .line 4
    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 5
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    return-void

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 9
    :cond_14
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/tappx/a/j4;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 2
    sget-object v0, Lcom/tappx/a/j4;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/tappx/a/j4;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 2
    sget-object v0, Lcom/tappx/a/j4;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/tappx/a/j4;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 2
    sget-object v0, Lcom/tappx/a/j4;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
