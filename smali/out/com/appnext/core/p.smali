.class public abstract Lcom/appnext/core/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/core/p$b;,
        Lcom/appnext/core/p$a;
    }
.end annotation


# static fields
.field protected static final hD:Ljava/lang/String; = "https://cdn.appnext.com/tools/sdk/confign"


# instance fields
.field protected aR:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected hE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private hF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/appnext/core/p$a;",
            ">;"
        }
    .end annotation
.end field

.field private state:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/appnext/core/p;->hE:Ljava/util/HashMap;

    .line 27
    iput-object v0, p0, Lcom/appnext/core/p;->aR:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/appnext/core/p;->state:I

    return-void
.end method

.method static synthetic a(Lcom/appnext/core/p;I)I
    .registers 2

    .line 15
    iput p1, p0, Lcom/appnext/core/p;->state:I

    return p1
.end method

.method static synthetic a(Lcom/appnext/core/p;Ljava/lang/String;)V
    .registers 5

    const-string v0, "https://cdn.appnext.com/tools/sdk/confign"

    .line 3225
    monitor-enter v0

    .line 3226
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/appnext/core/p;->hF:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3227
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appnext/core/p$a;

    if-eqz v2, :cond_e

    .line 3229
    invoke-interface {v2, p1}, Lcom/appnext/core/p$a;->error(Ljava/lang/String;)V

    goto :goto_e

    .line 3231
    :cond_20
    iget-object p0, p0, Lcom/appnext/core/p;->hF:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 3232
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    goto :goto_2b

    :goto_2a
    throw p0

    :goto_2b
    goto :goto_2a
.end method

.method static synthetic a(Lcom/appnext/core/p;Ljava/util/HashMap;)V
    .registers 5

    const-string v0, "https://cdn.appnext.com/tools/sdk/confign"

    .line 3236
    monitor-enter v0

    .line 3237
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/appnext/core/p;->hF:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3238
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appnext/core/p$a;

    .line 3239
    invoke-interface {v2, p1}, Lcom/appnext/core/p$a;->b(Ljava/util/HashMap;)V

    goto :goto_e

    .line 3241
    :cond_1e
    iget-object p0, p0, Lcom/appnext/core/p;->hF:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 3242
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    goto :goto_29

    :goto_28
    throw p0

    :goto_29
    goto :goto_28
.end method

.method private ad(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 72
    iget-object v0, p0, Lcom/appnext/core/p;->aR:Ljava/util/HashMap;

    if-nez v0, :cond_5

    return-object p1

    .line 75
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2b

    const-string v3, "&"

    :cond_2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/appnext/core/p;->aR:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_d

    :cond_46
    return-object p1
.end method

.method protected static ae(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 202
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 205
    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 206
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 207
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 209
    :try_start_1e
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 211
    :goto_27
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 212
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 213
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 214
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catchall {:try_start_1e .. :try_end_4e} :catchall_4f

    goto :goto_27

    .line 217
    :catchall_4f
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_53
    return-object v0
.end method

.method private af(Ljava/lang/String;)V
    .registers 5

    const-string v0, "https://cdn.appnext.com/tools/sdk/confign"

    .line 225
    monitor-enter v0

    .line 226
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/appnext/core/p;->hF:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 227
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appnext/core/p$a;

    if-eqz v2, :cond_e

    .line 229
    invoke-interface {v2, p1}, Lcom/appnext/core/p$a;->error(Ljava/lang/String;)V

    goto :goto_e

    .line 231
    :cond_20
    iget-object p1, p0, Lcom/appnext/core/p;->hF:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 232
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    goto :goto_2b

    :goto_2a
    throw p1

    :goto_2b
    goto :goto_2a
.end method

.method private e(Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "https://cdn.appnext.com/tools/sdk/confign"

    .line 236
    monitor-enter v0

    .line 237
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/appnext/core/p;->hF:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 238
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appnext/core/p$a;

    .line 239
    invoke-interface {v2, p1}, Lcom/appnext/core/p$a;->b(Ljava/util/HashMap;)V

    goto :goto_e

    .line 241
    :cond_1e
    iget-object p1, p0, Lcom/appnext/core/p;->hF:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 242
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    goto :goto_29

    :goto_28
    throw p1

    :goto_29
    goto :goto_28
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Lcom/appnext/core/p$a;)V
    .registers 8

    monitor-enter p0

    .line 46
    :try_start_1
    iget-object v0, p0, Lcom/appnext/core/p;->hF:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appnext/core/p;->hF:Ljava/util/ArrayList;

    .line 48
    :cond_c
    iget v0, p0, Lcom/appnext/core/p;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    if-eqz p2, :cond_60

    .line 50
    iget-object p1, p0, Lcom/appnext/core/p;->hE:Ljava/util/HashMap;

    invoke-interface {p2, p1}, Lcom/appnext/core/p$a;->b(Ljava/util/HashMap;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_62

    monitor-exit p0

    return-void

    .line 54
    :cond_1a
    :try_start_1a
    iget v0, p0, Lcom/appnext/core/p;->state:I

    if-nez v0, :cond_59

    const/4 v0, 0x1

    .line 55
    iput v0, p0, Lcom/appnext/core/p;->state:I

    .line 56
    invoke-virtual {p0}, Lcom/appnext/core/p;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_30

    const-string v3, "pck"

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/appnext/core/p;->q(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    const-string p1, "vid"

    .line 60
    invoke-static {}, Lcom/appnext/core/f;->bi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/appnext/core/p;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "start loading config from "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    new-instance p1, Lcom/appnext/core/p$b;

    const/4 v3, 0x0

    invoke-direct {p1, p0, v3}, Lcom/appnext/core/p$b;-><init>(Lcom/appnext/core/p;Lcom/appnext/core/p$1;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/appnext/core/p;->n()Ljava/util/HashMap;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p1, v3, v1}, Lcom/appnext/core/p$b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_59
    if-eqz p2, :cond_60

    .line 67
    iget-object p1, p0, Lcom/appnext/core/p;->hF:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_60
    .catchall {:try_start_1a .. :try_end_60} :catchall_62

    .line 69
    :cond_60
    monitor-exit p0

    return-void

    :catchall_62
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/appnext/core/p$a;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 42
    :try_start_2
    invoke-virtual {p0, v0, p1}, Lcom/appnext/core/p;->a(Landroid/content/Context;Lcom/appnext/core/p$a;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 43
    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/appnext/core/p;->aR:Ljava/util/HashMap;

    return-void
.end method

.method public final bn()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/appnext/core/p;->hE:Ljava/util/HashMap;

    return-object v0
.end method

.method public final get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 127
    invoke-virtual {p0, p1}, Lcom/appnext/core/p;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 134
    :cond_7
    invoke-virtual {p0}, Lcom/appnext/core/p;->o()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 135
    invoke-virtual {p0}, Lcom/appnext/core/p;->o()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method public final get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 143
    invoke-virtual {p0, p1}, Lcom/appnext/core/p;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    return-object p2

    :cond_7
    invoke-virtual {p0, p1}, Lcom/appnext/core/p;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getUrl()Ljava/lang/String;
.end method

.method public final getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1102
    iget-object v0, p0, Lcom/appnext/core/p;->hE:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 120
    :cond_6
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3102
    iget-object v0, p0, Lcom/appnext/core/p;->hE:Ljava/util/HashMap;

    .line 121
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_15
    return-object v1
.end method

.method public final isLoaded()Z
    .registers 3

    .line 113
    iget v0, p0, Lcom/appnext/core/p;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract n()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract o()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public final q(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 87
    iget-object v0, p0, Lcom/appnext/core/p;->aR:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appnext/core/p;->aR:Ljava/util/HashMap;

    .line 90
    :cond_b
    iget-object v0, p0, Lcom/appnext/core/p;->aR:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 94
    iget-object v0, p0, Lcom/appnext/core/p;->aR:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appnext/core/p;->aR:Ljava/util/HashMap;

    .line 97
    :cond_b
    iget-object v0, p0, Lcom/appnext/core/p;->aR:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 98
    iget-object v0, p0, Lcom/appnext/core/p;->aR:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    return-void
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 106
    iget-object v0, p0, Lcom/appnext/core/p;->hE:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appnext/core/p;->hE:Ljava/util/HashMap;

    .line 109
    :cond_b
    iget-object v0, p0, Lcom/appnext/core/p;->hE:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
