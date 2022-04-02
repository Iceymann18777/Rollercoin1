.class final Lcom/appnext/core/d$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/d;->b(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Lcom/appnext/core/d$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fV:Lcom/appnext/core/Ad;

.field final synthetic fW:Lcom/appnext/core/d$a;

.field final synthetic fX:Z

.field final synthetic fY:Lcom/appnext/core/d;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$placementID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appnext/core/d;Lcom/appnext/core/Ad;Landroid/content/Context;Lcom/appnext/core/d$a;Ljava/lang/String;Z)V
    .registers 7

    .line 151
    iput-object p1, p0, Lcom/appnext/core/d$2;->fY:Lcom/appnext/core/d;

    iput-object p2, p0, Lcom/appnext/core/d$2;->fV:Lcom/appnext/core/Ad;

    iput-object p3, p0, Lcom/appnext/core/d$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/appnext/core/d$2;->fW:Lcom/appnext/core/d$a;

    iput-object p5, p0, Lcom/appnext/core/d$2;->val$placementID:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/appnext/core/d$2;->fX:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 154
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 157
    :try_start_3
    iget-object v0, p0, Lcom/appnext/core/d$2;->fV:Lcom/appnext/core/Ad;

    iget-object v1, p0, Lcom/appnext/core/d$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/appnext/core/f;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appnext/core/Ad;->setSessionId(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_e

    .line 161
    :catchall_e
    :try_start_e
    iget-object v0, p0, Lcom/appnext/core/d$2;->fY:Lcom/appnext/core/d;

    invoke-static {v0}, Lcom/appnext/core/d;->a(Lcom/appnext/core/d;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_179

    .line 162
    :try_start_15
    iget-object v1, p0, Lcom/appnext/core/d$2;->fY:Lcom/appnext/core/d;

    iget-object v2, p0, Lcom/appnext/core/d$2;->fV:Lcom/appnext/core/Ad;

    invoke-virtual {v1, v2}, Lcom/appnext/core/d;->k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/appnext/core/d$2;->fY:Lcom/appnext/core/d;

    iget-object v3, p0, Lcom/appnext/core/d$2;->fV:Lcom/appnext/core/Ad;

    invoke-virtual {v1, v3}, Lcom/appnext/core/d;->k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appnext/core/a;->getState()I

    move-result v1

    if-ne v1, v2, :cond_41

    .line 163
    iget-object v1, p0, Lcom/appnext/core/d$2;->fW:Lcom/appnext/core/d$a;

    if-eqz v1, :cond_3f

    .line 164
    iget-object v1, p0, Lcom/appnext/core/d$2;->fY:Lcom/appnext/core/d;

    iget-object v2, p0, Lcom/appnext/core/d$2;->fV:Lcom/appnext/core/Ad;

    invoke-virtual {v1, v2}, Lcom/appnext/core/d;->k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v1

    iget-object v2, p0, Lcom/appnext/core/d$2;->fW:Lcom/appnext/core/d$a;

    invoke-virtual {v1, v2}, Lcom/appnext/core/a;->a(Lcom/appnext/core/d$a;)V

    .line 165
    :cond_3f
    monitor-exit v0

    return-void

    .line 169
    :cond_41
    new-instance v1, Lcom/appnext/core/a;

    invoke-direct {v1}, Lcom/appnext/core/a;-><init>()V

    .line 170
    iget-object v3, p0, Lcom/appnext/core/d$2;->fW:Lcom/appnext/core/d$a;

    invoke-virtual {v1, v3}, Lcom/appnext/core/a;->a(Lcom/appnext/core/d$a;)V

    .line 171
    iget-object v3, p0, Lcom/appnext/core/d$2;->val$placementID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/appnext/core/a;->setPlacementID(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v1, v2}, Lcom/appnext/core/a;->setState(I)V

    .line 173
    iget-object v2, p0, Lcom/appnext/core/d$2;->fY:Lcom/appnext/core/d;

    invoke-static {v2}, Lcom/appnext/core/d;->a(Lcom/appnext/core/d;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Lcom/appnext/core/b;

    iget-object v4, p0, Lcom/appnext/core/d$2;->fV:Lcom/appnext/core/Ad;

    invoke-direct {v3, v4}, Lcom/appnext/core/b;-><init>(Lcom/appnext/core/Ad;)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v2, p0, Lcom/appnext/core/d$2;->fY:Lcom/appnext/core/d;

    iget-object v3, p0, Lcom/appnext/core/d$2;->fV:Lcom/appnext/core/Ad;

    invoke-virtual {v2, v3, v1}, Lcom/appnext/core/d;->a(Lcom/appnext/core/Ad;Lcom/appnext/core/a;)V

    .line 175
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_15 .. :try_end_6b} :catchall_176

    const/4 v0, 0x0

    .line 179
    :try_start_6c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/appnext/core/d$2;->fY:Lcom/appnext/core/d;

    iget-object v4, p0, Lcom/appnext/core/d$2;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/appnext/core/d$2;->fV:Lcom/appnext/core/Ad;

    iget-object v6, p0, Lcom/appnext/core/d$2;->val$placementID:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6, v1}, Lcom/appnext/core/d;->a(Lcom/appnext/core/d;Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/appnext/core/d$2;->fY:Lcom/appnext/core/d;

    iget-object v4, p0, Lcom/appnext/core/d$2;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/appnext/core/d$2;->fV:Lcom/appnext/core/Ad;

    iget-object v6, p0, Lcom/appnext/core/d$2;->val$placementID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v1}, Lcom/appnext/core/d;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AdsManager request url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x1f40

    .line 182
    invoke-static {v2, v1, v3}, Lcom/appnext/core/f;->a(Ljava/lang/String;Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v1
    :try_end_a8
    .catch Ljava/net/SocketTimeoutException; {:try_start_6c .. :try_end_a8} :catch_167
    .catch Ljava/net/UnknownHostException; {:try_start_6c .. :try_end_a8} :catch_158
    .catchall {:try_start_6c .. :try_end_a8} :catchall_149

    :try_start_a8
    const-string v2, "{}"

    .line 197
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13f

    invoke-static {v1}, Lcom/appnext/core/d;->P(Ljava/lang/String;)Z

    move-result v2
    :try_end_b4
    .catchall {:try_start_a8 .. :try_end_b4} :catchall_179

    if-eqz v2, :cond_b8

    goto/16 :goto_13f

    .line 206
    :cond_b8
    :try_start_b8
    iget-object v2, p0, Lcom/appnext/core/d$2;->fY:Lcom/appnext/core/d;

    iget-object v3, p0, Lcom/appnext/core/d$2;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/appnext/core/d$2;->fV:Lcom/appnext/core/Ad;

    const/16 v5, 0x32

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/appnext/core/d;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_c4
    .catchall {:try_start_b8 .. :try_end_c4} :catchall_130

    .line 218
    :try_start_c4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_d4

    .line 219
    iget-object v0, p0, Lcom/appnext/core/d$2;->fY:Lcom/appnext/core/d;

    const-string v1, "No Ads"

    iget-object v2, p0, Lcom/appnext/core/d$2;->fV:Lcom/appnext/core/Ad;

    invoke-virtual {v0, v1, v2}, Lcom/appnext/core/d;->b(Ljava/lang/String;Lcom/appnext/core/Ad;)V

    return-void

    .line 223
    :cond_d4
    iget-object v2, p0, Lcom/appnext/core/d$2;->fY:Lcom/appnext/core/d;

    iget-object v3, p0, Lcom/appnext/core/d$2;->fV:Lcom/appnext/core/Ad;

    invoke-virtual {v2, v3}, Lcom/appnext/core/d;->k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/appnext/core/a;->d(Ljava/util/ArrayList;)V

    .line 226
    iget-boolean v2, p0, Lcom/appnext/core/d$2;->fX:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_113

    .line 227
    iget-object v2, p0, Lcom/appnext/core/d$2;->fY:Lcom/appnext/core/d;

    iget-object v4, p0, Lcom/appnext/core/d$2;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/appnext/core/d$2;->fV:Lcom/appnext/core/Ad;

    invoke-virtual {v2, v4, v5, v1}, Lcom/appnext/core/d;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_f7

    .line 228
    iget-object v1, p0, Lcom/appnext/core/d$2;->fY:Lcom/appnext/core/d;

    iget-object v2, p0, Lcom/appnext/core/d$2;->val$placementID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/appnext/core/d;->l(Ljava/lang/String;)V
    :try_end_f7
    .catchall {:try_start_c4 .. :try_end_f7} :catchall_179

    :cond_f7
    :goto_f7
    const/4 v1, 0x3

    if-ge v0, v1, :cond_113

    .line 234
    :try_start_fa
    iget-object v1, p0, Lcom/appnext/core/d$2;->fY:Lcom/appnext/core/d;

    iget-object v2, p0, Lcom/appnext/core/d$2;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/appnext/core/d$2;->fV:Lcom/appnext/core/Ad;

    iget-object v5, p0, Lcom/appnext/core/d$2;->fY:Lcom/appnext/core/d;

    iget-object v6, p0, Lcom/appnext/core/d$2;->fV:Lcom/appnext/core/Ad;

    invoke-virtual {v5, v6}, Lcom/appnext/core/d;->k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v5

    invoke-virtual {v1, v2, v4, v5}, Lcom/appnext/core/d;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Lcom/appnext/core/a;)V
    :try_end_10b
    .catchall {:try_start_fa .. :try_end_10b} :catchall_10c

    goto :goto_113

    :catchall_10c
    move-exception v1

    if-eq v0, v3, :cond_112

    add-int/lit8 v0, v0, 0x1

    goto :goto_f7

    .line 238
    :cond_112
    :try_start_112
    throw v1

    .line 245
    :cond_113
    :goto_113
    iget-object v0, p0, Lcom/appnext/core/d$2;->fY:Lcom/appnext/core/d;

    iget-object v1, p0, Lcom/appnext/core/d$2;->fV:Lcom/appnext/core/Ad;

    invoke-virtual {v0, v1}, Lcom/appnext/core/d;->k(Lcom/appnext/core/Ad;)Lcom/appnext/core/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/appnext/core/a;->setState(I)V

    .line 246
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/appnext/core/d$2$1;

    invoke-direct {v1, p0}, Lcom/appnext/core/d$2$1;-><init>(Lcom/appnext/core/d$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_130
    move-exception v0

    .line 209
    iget-object v1, p0, Lcom/appnext/core/d$2;->fY:Lcom/appnext/core/d;

    const-string v2, "Internal error"

    invoke-static {v0}, Lcom/appnext/core/f;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/appnext/core/d$2;->fV:Lcom/appnext/core/Ad;

    invoke-virtual {v1, v2, v0, v3}, Lcom/appnext/core/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/Ad;)V

    return-void

    .line 198
    :cond_13f
    :goto_13f
    iget-object v0, p0, Lcom/appnext/core/d$2;->fY:Lcom/appnext/core/d;

    const-string v2, "No Ads"

    iget-object v3, p0, Lcom/appnext/core/d$2;->fV:Lcom/appnext/core/Ad;

    invoke-virtual {v0, v2, v1, v3}, Lcom/appnext/core/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/Ad;)V

    return-void

    :catchall_149
    move-exception v0

    .line 194
    iget-object v1, p0, Lcom/appnext/core/d$2;->fY:Lcom/appnext/core/d;

    const-string v2, "Internal error"

    invoke-static {v0}, Lcom/appnext/core/f;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/appnext/core/d$2;->fV:Lcom/appnext/core/Ad;

    invoke-virtual {v1, v2, v0, v3}, Lcom/appnext/core/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/Ad;)V

    return-void

    :catch_158
    move-exception v1

    .line 190
    iget-object v2, p0, Lcom/appnext/core/d$2;->fY:Lcom/appnext/core/d;

    const-string v3, "Connection Error"

    invoke-static {v1}, Lcom/appnext/core/f;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/appnext/core/d$2;->fV:Lcom/appnext/core/Ad;

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/appnext/core/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/Ad;I)V

    return-void

    :catch_167
    move-exception v1

    .line 186
    iget-object v2, p0, Lcom/appnext/core/d$2;->fY:Lcom/appnext/core/d;

    const-string v3, "Timeout"

    invoke-static {v1}, Lcom/appnext/core/f;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/appnext/core/d$2;->fV:Lcom/appnext/core/Ad;

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/appnext/core/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/Ad;I)V
    :try_end_175
    .catchall {:try_start_112 .. :try_end_175} :catchall_179

    return-void

    :catchall_176
    move-exception v1

    .line 175
    :try_start_177
    monitor-exit v0
    :try_end_178
    .catchall {:try_start_177 .. :try_end_178} :catchall_176

    :try_start_178
    throw v1
    :try_end_179
    .catchall {:try_start_178 .. :try_end_179} :catchall_179

    :catchall_179
    move-exception v0

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finished custom after load with error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/appnext/core/f;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget-object v1, p0, Lcom/appnext/core/d$2;->fY:Lcom/appnext/core/d;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/appnext/core/d$2;->fV:Lcom/appnext/core/Ad;

    invoke-virtual {v1, v0, v2}, Lcom/appnext/core/d;->b(Ljava/lang/String;Lcom/appnext/core/Ad;)V

    return-void
.end method
