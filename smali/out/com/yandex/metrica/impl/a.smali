.class public Lcom/yandex/metrica/impl/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/a$a;
    }
.end annotation


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:J

.field private c:Z

.field private d:Lcom/yandex/metrica/impl/utils/f$a;

.field private final e:Lcom/yandex/metrica/impl/utils/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .registers 5

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/a;->a:Lorg/json/JSONObject;

    .line 74
    invoke-static {}, Lcom/yandex/metrica/impl/utils/f$a;->d()Lcom/yandex/metrica/impl/utils/f$a;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/a;->d:Lcom/yandex/metrica/impl/utils/f$a;

    .line 75
    new-instance v0, Lcom/yandex/metrica/impl/utils/f;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/utils/f;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/a;->e:Lcom/yandex/metrica/impl/utils/f;

    .line 78
    iput-wide p2, p0, Lcom/yandex/metrica/impl/a;->b:J

    .line 80
    :try_start_19
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/yandex/metrica/impl/a;->a:Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_20} :catch_21

    return-void

    .line 83
    :catch_21
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/impl/a;->a:Lorg/json/JSONObject;

    const-wide/16 p1, 0x0

    .line 84
    iput-wide p1, p0, Lcom/yandex/metrica/impl/a;->b:J

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 3

    monitor-enter p0

    .line 89
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/a;->a:Lorg/json/JSONObject;

    const-wide/16 v0, 0x0

    .line 90
    iput-wide v0, p0, Lcom/yandex/metrica/impl/a;->b:J
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 91
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/os/Bundle;)V
    .registers 5

    monitor-enter p0

    .line 122
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 123
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/yandex/metrica/impl/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1f

    goto :goto_9

    .line 125
    :cond_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit p0

    goto :goto_23

    :goto_22
    throw p1

    :goto_23
    goto :goto_22
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 100
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/a;->e:Lcom/yandex/metrica/impl/utils/f;

    iget-object v1, p0, Lcom/yandex/metrica/impl/a;->d:Lcom/yandex/metrica/impl/utils/f$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/utils/f$a;->b()I

    move-result v1

    const-string v2, "App Environment"

    invoke-virtual {v0, p1, v1, v2}, Lcom/yandex/metrica/impl/utils/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 101
    iget-object v0, p0, Lcom/yandex/metrica/impl/a;->e:Lcom/yandex/metrica/impl/utils/f;

    iget-object v1, p0, Lcom/yandex/metrica/impl/a;->d:Lcom/yandex/metrica/impl/utils/f$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/utils/f$a;->c()I

    move-result v1

    const-string v2, "App Environment"

    invoke-virtual {v0, p2, v1, v2}, Lcom/yandex/metrica/impl/utils/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 102
    iget-object v0, p0, Lcom/yandex/metrica/impl/a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 103
    iget-object v0, p0, Lcom/yandex/metrica/impl/a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_33

    .line 104
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 105
    :cond_33
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_36} :catch_42
    .catchall {:try_start_1 .. :try_end_36} :catchall_3f

    .line 107
    :cond_36
    monitor-exit p0

    return-void

    :cond_38
    if-eqz p2, :cond_3d

    .line 108
    :try_start_3a
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_3a .. :try_end_3d} :catch_42
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3f

    .line 112
    :cond_3d
    monitor-exit p0

    return-void

    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1

    .line 113
    :catch_42
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b()Lcom/yandex/metrica/impl/a$a;
    .registers 5

    monitor-enter p0

    .line 141
    :try_start_1
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/a;->c:Z

    if-eqz v0, :cond_f

    .line 142
    iget-wide v0, p0, Lcom/yandex/metrica/impl/a;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yandex/metrica/impl/a;->b:J

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/a;->c:Z

    .line 145
    :cond_f
    new-instance v0, Lcom/yandex/metrica/impl/a$a;

    iget-object v1, p0, Lcom/yandex/metrica/impl/a;->a:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/yandex/metrica/impl/a;->b:J

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/a$a;-><init>(Ljava/lang/String;J)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    return-object v0

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    monitor-enter p0

    .line 129
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/a;->d:Lcom/yandex/metrica/impl/utils/f$a;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/utils/f$a;->a()I

    move-result v1

    if-lt v0, v1, :cond_35

    iget-object v0, p0, Lcom/yandex/metrica/impl/a;->d:Lcom/yandex/metrica/impl/utils/f$a;

    .line 130
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/utils/f$a;->a()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/metrica/impl/a;->a:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/yandex/metrica/impl/a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_35

    .line 136
    :cond_26
    iget-object p2, p0, Lcom/yandex/metrica/impl/a;->e:Lcom/yandex/metrica/impl/utils/f;

    iget-object v0, p0, Lcom/yandex/metrica/impl/a;->d:Lcom/yandex/metrica/impl/utils/f$a;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/utils/f$a;->a()I

    move-result v0

    const-string v1, "App Environment"

    invoke-virtual {p2, p1, v0, v1}, Lcom/yandex/metrica/impl/utils/f;->b(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_3f

    .line 138
    monitor-exit p0

    return-void

    .line 132
    :cond_35
    :goto_35
    :try_start_35
    iget-object v0, p0, Lcom/yandex/metrica/impl/a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x1

    .line 133
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/a;->c:Z
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_3f

    monitor-exit p0

    return-void

    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 150
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Map size "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/yandex/metrica/impl/a;->a:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Is changed "

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ". Current revision "

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-wide v1, p0, Lcom/yandex/metrica/impl/a;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    monitor-exit p0

    return-object v0

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
