.class Lcom/moat/analytics/mobile/mpub/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/mpub/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Z)V
    .registers 4

    const/4 v0, 0x0

    const-string v1, "ActivityState"

    const/4 v2, 0x3

    if-eqz p0, :cond_9

    const-string p0, "App became visible"

    goto :goto_b

    :cond_9
    const-string p0, "App became invisible"

    :goto_b
    invoke-static {v2, v1, v0, p0}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/moat/analytics/mobile/mpub/a;->a(I)I

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/moat/analytics/mobile/mpub/a;->c()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1b

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/a;->c()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1b

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/a;->b()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    invoke-static {v2}, Lcom/moat/analytics/mobile/mpub/a$a;->a(Z)V

    :cond_18
    invoke-static {v2}, Lcom/moat/analytics/mobile/mpub/a;->a(Z)Z

    :cond_1b
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/a;->a(I)I

    const-string v0, "ActivityState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity destroyed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, p0, v2}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/moat/analytics/mobile/mpub/a;->a(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_58

    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lcom/moat/analytics/mobile/mpub/a;->a:Ljava/lang/ref/WeakReference;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_53} :catch_54

    goto :goto_58

    :catch_54
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/Exception;)V

    :cond_58
    :goto_58
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 6

    const/4 v0, 0x4

    :try_start_1
    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/a;->a(I)I

    invoke-static {p1}, Lcom/moat/analytics/mobile/mpub/a;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/moat/analytics/mobile/mpub/a;->a:Ljava/lang/ref/WeakReference;

    :cond_12
    const/4 v0, 0x3

    const-string v1, "ActivityState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity paused: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p0, p1}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_39} :catch_3a

    goto :goto_3e

    :catch_3a
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/Exception;)V

    :goto_3e
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 6

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/moat/analytics/mobile/mpub/a;->a:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/a;->a(I)I

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/w;->a()Lcom/moat/analytics/mobile/mpub/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/moat/analytics/mobile/mpub/w;->b()V

    const-string v1, "ActivityState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity resumed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/mpub/MoatAnalytics;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/mpub/k;

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/mpub/k;->b:Z

    if-eqz v0, :cond_4a

    invoke-static {p1}, Lcom/moat/analytics/mobile/mpub/f;->a(Landroid/app/Activity;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_46

    goto :goto_4a

    :catch_46
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/Exception;)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 6

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/moat/analytics/mobile/mpub/a;->a:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/a;->a(I)I

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/a;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_15

    invoke-static {v1}, Lcom/moat/analytics/mobile/mpub/a$a;->a(Z)V

    :cond_15
    invoke-static {v1}, Lcom/moat/analytics/mobile/mpub/a;->a(Z)Z

    const/4 v0, 0x3

    const-string v1, "ActivityState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p0, p1}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_40

    goto :goto_44

    :catch_40
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/Exception;)V

    :goto_44
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/moat/analytics/mobile/mpub/a;->c()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/a;->a(Z)Z

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/a$a;->a(Z)V

    :cond_e
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/a;->a(I)I

    invoke-static {p1}, Lcom/moat/analytics/mobile/mpub/a;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/moat/analytics/mobile/mpub/a;->a:Ljava/lang/ref/WeakReference;

    :cond_20
    const-string v0, "ActivityState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity stopped: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p0, p1}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_46} :catch_47

    goto :goto_4b

    :catch_47
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/Exception;)V

    :goto_4b
    return-void
.end method
