.class public final Lcom/appnext/base/services/a/a;
.super Lcom/appnext/base/services/a/c;
.source "SourceFile"


# instance fields
.field private eE:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 22
    invoke-direct {p0}, Lcom/appnext/base/services/a/c;-><init>()V

    .line 24
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/base/services/a/a;->mContext:Landroid/content/Context;

    const-string v0, "alarm"

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/appnext/base/services/a/a;->eE:Landroid/app/AlarmManager;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_13

    :catchall_13
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V
    .registers 16

    .line 79
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appnext/base/services/a/a;->mContext:Landroid/content/Context;

    const-class v2, Lcom/appnext/base/services/OperationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "config_data_obj"

    .line 80
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p7, :cond_15

    const-string p2, "more_data"

    .line 82
    invoke-virtual {v0, p2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 84
    :cond_15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    .line 85
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    iget-object p1, p0, Lcom/appnext/base/services/a/a;->mContext:Landroid/content/Context;

    const/high16 p7, 0x8000000

    invoke-static {p1, p2, v0, p7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    const-wide/16 p1, 0x0

    cmp-long p7, p5, p1

    if-lez p7, :cond_33

    .line 88
    iget-object v1, p0, Lcom/appnext/base/services/a/a;->eE:Landroid/app/AlarmManager;

    const/4 v2, 0x1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_39

    .line 90
    :cond_33
    iget-object p1, p0, Lcom/appnext/base/services/a/a;->eE:Landroid/app/AlarmManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p3, p4, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_39
    .catchall {:try_start_0 .. :try_end_39} :catchall_39

    :catchall_39
    :goto_39
    return-void
.end method


# virtual methods
.method protected final a(Lcom/appnext/base/a/b/c;JJ)V
    .registers 14

    .line 64
    invoke-virtual {p1}, Lcom/appnext/base/a/b/c;->ap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/appnext/base/a/b/c;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/appnext/base/services/a/a;->a(Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    return-void
.end method

.method protected final a(Lcom/appnext/base/a/b/c;JLandroid/os/Bundle;)V
    .registers 13

    .line 74
    invoke-virtual {p1}, Lcom/appnext/base/a/b/c;->ap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/appnext/base/a/b/c;->getKey()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-wide v3, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/appnext/base/services/a/a;->a(Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    return-void
.end method

.method public final b(Lcom/appnext/base/a/b/c;)V
    .registers 5

    .line 34
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appnext/base/services/a/a;->mContext:Landroid/content/Context;

    const-class v2, Lcom/appnext/base/services/OperationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    iget-object v1, p0, Lcom/appnext/base/services/a/a;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/appnext/base/a/b/c;->ap()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/high16 v2, 0x10000000

    invoke-static {v1, p1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 36
    iget-object v0, p0, Lcom/appnext/base/services/a/a;->eE:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 38
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/appnext/base/services/a/a;->mContext:Landroid/content/Context;

    const-class v1, Lcom/appnext/base/services/OperationService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    iget-object v0, p0, Lcom/appnext/base/services/a/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2c

    :catchall_2c
    return-void
.end method

.method protected final b(Lcom/appnext/base/a/b/c;JJ)V
    .registers 14

    .line 69
    invoke-virtual {p1}, Lcom/appnext/base/a/b/c;->ap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/appnext/base/a/b/c;->getKey()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v5, 0x5265c00

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/appnext/base/services/a/a;->a(Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    return-void
.end method

.method public final g(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/appnext/base/a/b/c;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 53
    :cond_3
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appnext/base/a/b/c;

    .line 54
    invoke-virtual {p0, v0}, Lcom/appnext/base/services/a/a;->b(Lcom/appnext/base/a/b/c;)V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_17

    goto :goto_7

    :catchall_17
    :cond_17
    return-void
.end method
