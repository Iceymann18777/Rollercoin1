.class Lcom/moat/analytics/mobile/mpub/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/mpub/j$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Z

.field private f:Z

.field private g:Z

.field private final h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/moat/analytics/mobile/mpub/b;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final k:J

.field private final l:Ljava/lang/String;

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lcom/moat/analytics/mobile/mpub/j$a;

.field private final o:Landroid/content/BroadcastReceiver;

.field private final p:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Lcom/moat/analytics/mobile/mpub/j$a;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/moat/analytics/mobile/mpub/j;->a:I

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/j;->b:Z

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/j;->c:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/mpub/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/j;->e:Z

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/j;->f:Z

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/j;->g:Z

    new-instance v1, Lcom/moat/analytics/mobile/mpub/j$2;

    invoke-direct {v1, p0}, Lcom/moat/analytics/mobile/mpub/j$2;-><init>(Lcom/moat/analytics/mobile/mpub/j;)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/mpub/j;->o:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/moat/analytics/mobile/mpub/j$3;

    invoke-direct {v1, p0}, Lcom/moat/analytics/mobile/mpub/j$3;-><init>(Lcom/moat/analytics/mobile/mpub/j;)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/mpub/j;->p:Landroid/content/BroadcastReceiver;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/mpub/j;->h:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/moat/analytics/mobile/mpub/j;->n:Lcom/moat/analytics/mobile/mpub/j$a;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/moat/analytics/mobile/mpub/j;->j:Ljava/util/LinkedList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/moat/analytics/mobile/mpub/j;->m:Ljava/util/List;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/moat/analytics/mobile/mpub/j;->i:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/moat/analytics/mobile/mpub/j;->k:J

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/j;->h()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "javascript:(function(d,k){function l(){function d(a,b){var c=ipkn[b]||ipkn[kuea];if(c){var h=function(b){var c=b.b;c.ts=b.i;c.ticks=b.g;c.buffered=!0;a(c)};h(c.first);c.a.forEach(function(a){h(a)})}}function e(a){var b=a.a,c=a.c,h=a.b;a=a.f;var d=[];if(c)b[c]&&d.push(b[c].fn[0]);else for(key in b)if(b[key])for(var g=0,e=b[key].fn.length;g<e;g++)d.push(b[key].fn[g]);g=0;for(e=d.length;g<e;g++){var f=d[g];if(\'function\'===typeof f)try{h?f(h):f()}catch(k){}a&&delete b[c]}}function f(a,b,c){\'function\'===typeof a&& (b===kuea&&c[b]?c[b].fn.push(a):c[b]={ts:+new Date,fn:[a]},c===yhgt&&d(a,b))}kuea=+new Date;iymv={};briz=!1;ewat=+new Date;bnkr=[];bjmk={};dptk={};uqaj={};ryup={};yhgt={};ipkn={};csif={};this.h=function(a){this.namespace=a.namespace;this.version=a.version;this.appName=a.appName;this.deviceOS=a.deviceOS;this.isNative=a.isNative;this.versionHash=a.versionHash;this.aqzx=a.aqzx;this.appId=a.appId;this.metadata=a};this.nvsj=function(a){briz||(f(a,ewat,iymv),briz=!0)};this.bpsy=function(a,b){var c=b||kuea; c!==kuea&&bjmk[c]||f(a,c,bjmk)};this.qmrv=function(a,b){var c=b||kuea;c!==kuea&&uqaj[c]||f(a,c,uqaj)};this.lgpr=function(a,b){f(a,b||kuea,yhgt)};this.hgen=function(a,b){f(a,b||kuea,csif)};this.xrnk=function(a){delete yhgt[a||kuea]};this.vgft=function(a){return dptk[a||kuea]||!1};this.lkpu=function(a){return ryup[a||kuea]||!1};this.crts=function(a){var b={a:iymv,b:a,c:ewat};briz?e(b):bnkr.push(a)};this.mqjh=function(a){var b=a||kuea;dptk[b]=!0;var c={a:bjmk,f:!0};b!==kuea&&(c.b=a,c.c=a);e(c)};this.egpw= function(a){var b=a||kuea;ryup[b]=!0;var c={a:uqaj,f:!0};b!==kuea&&(c.b=a,c.c=a);e(c)};this.sglu=function(a){var b=a.adKey||kuea,c={a:yhgt,b:a.event||a,g:1,i:+new Date,f:!1};b!==kuea&&(c.c=a.adKey);a=0<Object.keys(yhgt).length;if(!a||!this.isNative)if(ipkn[b]){var d=ipkn[b].a.slice(-1)[0]||ipkn[b].first;JSON.stringify(c.b)==JSON.stringify(d.b)?d.g+=1:(5<=ipkn[b].a.length&&ipkn[b].a.shift(),ipkn[b].a.push(c))}else ipkn[b]={first:c,a:[]};a&&e(c);return a};this.ucbx=function(a){e({c:a.adKey||kuea,a:csif, b:a.event,f:!1})}}\'undefined\'===typeof d.MoatMAK&&(d.MoatMAK=new l,d.MoatMAK.h(k),d.__zMoatInit__=!0)})(window,%s);"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/moat/analytics/mobile/mpub/j;->l:Ljava/lang/String;

    const-string p1, "Initialize"

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/mpub/j;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a0

    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "UPDATE_METADATA"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "UPDATE_VIEW_INFO"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/i;->a()Lcom/moat/analytics/mobile/mpub/i;

    move-result-object v0

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/s;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/moat/analytics/mobile/mpub/j;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2, p1}, Lcom/moat/analytics/mobile/mpub/i;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/i;->a()Lcom/moat/analytics/mobile/mpub/i;

    move-result-object p1

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/s;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/moat/analytics/mobile/mpub/j;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v1, p2}, Lcom/moat/analytics/mobile/mpub/i;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/j;->d()V

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/i;->a()Lcom/moat/analytics/mobile/mpub/i;

    move-result-object p1

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/s;->b()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lcom/moat/analytics/mobile/mpub/i;->a(Landroid/content/Context;Lcom/moat/analytics/mobile/mpub/j;)V

    const/4 p1, 0x3

    const-string p2, "JavaScriptBridge"

    const-string v0, "bridge initialization succeeded"

    invoke-static {p1, p2, p0, v0}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a0
    return-void
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/mpub/j;)I
    .registers 1

    iget p0, p0, Lcom/moat/analytics/mobile/mpub/j;->a:I

    return p0
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/mpub/j;I)I
    .registers 2

    iput p1, p0, Lcom/moat/analytics/mobile/mpub/j;->a:I

    return p1
.end method

.method private a(Landroid/webkit/WebView;)Z
    .registers 2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result p1

    return p1
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/mpub/j;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/moat/analytics/mobile/mpub/j;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/moat/analytics/mobile/mpub/j;)I
    .registers 3

    iget v0, p0, Lcom/moat/analytics/mobile/mpub/j;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/moat/analytics/mobile/mpub/j;->a:I

    return v0
.end method

.method static synthetic b(Lcom/moat/analytics/mobile/mpub/j;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/moat/analytics/mobile/mpub/j;->f:Z

    return p1
.end method

.method private c()V
    .registers 5

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/j;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/moat/analytics/mobile/mpub/b;

    invoke-virtual {v1}, Lcom/moat/analytics/mobile/mpub/b;->e()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v1, v1, Lcom/moat/analytics/mobile/mpub/b;->e:Ljava/lang/String;

    aput-object v1, v2, v3

    const-string v1, "javascript: if(typeof MoatMAK !== \'undefined\'){MoatMAK.mqjh(\"%s\");}"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/moat/analytics/mobile/mpub/j;->g(Ljava/lang/String;)V

    goto :goto_a

    :cond_34
    return-void
.end method

.method static synthetic c(Lcom/moat/analytics/mobile/mpub/j;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/moat/analytics/mobile/mpub/j;->e:Z

    return p0
.end method

.method private d()V
    .registers 4

    const-string v0, "JavaScriptBridge"

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/w;->a()Lcom/moat/analytics/mobile/mpub/w;

    move-result-object v1

    :try_start_6
    iget-object v1, v1, Lcom/moat/analytics/mobile/mpub/w;->a:Lcom/moat/analytics/mobile/mpub/w$d;

    sget-object v2, Lcom/moat/analytics/mobile/mpub/w$d;->a:Lcom/moat/analytics/mobile/mpub/w$d;

    if-ne v1, v2, :cond_d

    return-void

    :cond_d
    iget-boolean v1, p0, Lcom/moat/analytics/mobile/mpub/j;->c:Z

    if-nez v1, :cond_1a

    const/4 v1, 0x3

    const-string v2, "Attempting to establish communication (setting environment variables)."

    invoke-static {v1, v0, p0, v2}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/moat/analytics/mobile/mpub/j;->c:Z

    :cond_1a
    iget-object v1, p0, Lcom/moat/analytics/mobile/mpub/j;->l:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/moat/analytics/mobile/mpub/j;->g(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1f} :catch_20

    goto :goto_26

    :catch_20
    move-exception v1

    const-string v2, "Attempt failed to establish communication (did not set environment variables)."

    invoke-static {v0, p0, v2, v1}, Lcom/moat/analytics/mobile/mpub/p;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_26
    return-void
.end method

.method private d(Lcom/moat/analytics/mobile/mpub/b;)V
    .registers 5

    const/4 v0, 0x3

    const-string v1, "JavaScriptBridge"

    const-string v2, "Stopping view update loop"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_11

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/i;->a()Lcom/moat/analytics/mobile/mpub/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/moat/analytics/mobile/mpub/i;->a(Lcom/moat/analytics/mobile/mpub/b;)V

    :cond_11
    return-void
.end method

.method static synthetic d(Lcom/moat/analytics/mobile/mpub/j;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/moat/analytics/mobile/mpub/j;->f:Z

    return p0
.end method

.method private d(Ljava/lang/String;)Z
    .registers 6

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/j;->g()Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "JavaScriptBridge"

    const/4 v2, 0x6

    if-eqz v0, :cond_2d

    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/mpub/j;->a(Landroid/webkit/WebView;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JavaScript is not enabled in the given WebView. Can\'t "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p0, p1}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/moat/analytics/mobile/mpub/n;

    const-string v0, "JavaScript is not enabled in the WebView"

    invoke-direct {p1, v0}, Lcom/moat/analytics/mobile/mpub/n;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebView is null. Can\'t "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p0, p1}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/moat/analytics/mobile/mpub/n;

    const-string v0, "WebView is null"

    invoke-direct {p1, v0}, Lcom/moat/analytics/mobile/mpub/n;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private e()V
    .registers 10

    :try_start_0
    invoke-static {}, Lcom/moat/analytics/mobile/mpub/w;->a()Lcom/moat/analytics/mobile/mpub/w;

    move-result-object v0

    iget-object v0, v0, Lcom/moat/analytics/mobile/mpub/w;->a:Lcom/moat/analytics/mobile/mpub/w$d;

    sget-object v1, Lcom/moat/analytics/mobile/mpub/w$d;->a:Lcom/moat/analytics/mobile/mpub/w$d;

    if-ne v0, v1, :cond_b

    return-void

    :cond_b
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/j;->g:Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_de

    const-string v1, "JavaScriptBridge"

    const/4 v2, 0x3

    if-eqz v0, :cond_18

    :try_start_12
    const-string v0, "Can\'t send info, already cleaned up"

    invoke-static {v2, v1, p0, v0}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_18
    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/j;->f()Z

    move-result v0

    if-eqz v0, :cond_b6

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/j;->b:Z

    if-eqz v0, :cond_2e

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/j;->g()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2e

    goto/16 :goto_b6

    :cond_2e
    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/j;->g()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_3b

    iput-boolean v3, p0, Lcom/moat/analytics/mobile/mpub/j;->b:Z

    :cond_3b
    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/j;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_45
    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/moat/analytics/mobile/mpub/b;

    if-eqz v4, :cond_5f

    invoke-virtual {v4}, Lcom/moat/analytics/mobile/mpub/b;->f()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_6b

    :cond_5f
    const-string v5, "Tracker has no subject"

    invoke-static {v2, v1, p0, v5}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_b2

    iget-boolean v5, v4, Lcom/moat/analytics/mobile/mpub/b;->f:Z

    if-nez v5, :cond_6b

    goto :goto_b2

    :cond_6b
    invoke-virtual {v4}, Lcom/moat/analytics/mobile/mpub/b;->e()Z

    move-result v5

    if-eqz v5, :cond_45

    iget-object v5, p0, Lcom/moat/analytics/mobile/mpub/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_89

    const-string v5, "javascript: if(typeof MoatMAK !== \'undefined\'){MoatMAK.mqjh(\"%s\");}"

    new-array v7, v3, [Ljava/lang/Object;

    iget-object v8, v4, Lcom/moat/analytics/mobile/mpub/b;->e:Ljava/lang/String;

    aput-object v8, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/moat/analytics/mobile/mpub/j;->g(Ljava/lang/String;)V

    :cond_89
    invoke-virtual {v4}, Lcom/moat/analytics/mobile/mpub/b;->h()Ljava/lang/String;

    move-result-object v4

    const-string v5, "javascript: if(typeof MoatMAK !== \'undefined\'){MoatMAK.sglu(%s);}"

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v4, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_aa

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/j;->g()Landroid/webkit/WebView;

    move-result-object v5

    new-instance v6, Lcom/moat/analytics/mobile/mpub/j$1;

    invoke-direct {v6, p0}, Lcom/moat/analytics/mobile/mpub/j$1;-><init>(Lcom/moat/analytics/mobile/mpub/j;)V

    invoke-virtual {v5, v4, v6}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_45

    :cond_aa
    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/j;->g()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_45

    :cond_b2
    :goto_b2
    invoke-virtual {p0, v4}, Lcom/moat/analytics/mobile/mpub/j;->c(Lcom/moat/analytics/mobile/mpub/b;)V

    goto :goto_45

    :cond_b6
    :goto_b6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebView became null"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/j;->g()Landroid/webkit/WebView;

    move-result-object v3

    if-nez v3, :cond_c9

    const-string v3, ""

    goto :goto_cb

    :cond_c9
    const-string v3, "based on null url"

    :goto_cb
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", stopping tracking loop"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, p0, v0}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/j;->b()V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_dd} :catch_de

    return-void

    :catch_de
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/j;->b()V

    :cond_e5
    return-void
.end method

.method static synthetic e(Lcom/moat/analytics/mobile/mpub/j;)V
    .registers 1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/j;->d()V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/j;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_16

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/j;->m:Ljava/util/List;

    const/4 v1, 0x0

    const/16 v2, 0x19

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_16
    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/j;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic f(Lcom/moat/analytics/mobile/mpub/j;)J
    .registers 3

    iget-wide v0, p0, Lcom/moat/analytics/mobile/mpub/j;->k:J

    return-wide v0
.end method

.method private f(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/mpub/j;->g(Ljava/lang/String;)V

    goto :goto_f

    :cond_c
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/mpub/j;->e(Ljava/lang/String;)V

    :goto_f
    return-void
.end method

.method private f()Z
    .registers 2

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/j;->g()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private g()Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/j;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic g(Lcom/moat/analytics/mobile/mpub/j;)V
    .registers 1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/j;->i()V

    return-void
.end method

.method private g(Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/j;->g:Z

    const-string v1, "JavaScriptBridge"

    if-eqz v0, :cond_d

    const/4 p1, 0x3

    const-string v0, "Can\'t send, already cleaned up"

    invoke-static {p1, v1, p0, v0}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_d
    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/j;->f()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x2

    invoke-static {v0, v1, p0, p1}, Lcom/moat/analytics/mobile/mpub/p;->b(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_26

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/j;->g()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_2d

    :cond_26
    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/j;->g()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method private h()Ljava/lang/String;
    .registers 13

    :try_start_0
    invoke-static {}, Lcom/moat/analytics/mobile/mpub/s;->c()Lcom/moat/analytics/mobile/mpub/s$a;

    move-result-object v0

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/s;->d()Lcom/moat/analytics/mobile/mpub/s$b;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/mpub/s$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/mpub/s$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/mpub/s$a;->c()Ljava/lang/String;

    move-result-object v0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/s;->a()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/moat/analytics/mobile/mpub/j;->n:Lcom/moat/analytics/mobile/mpub/j$a;

    sget-object v8, Lcom/moat/analytics/mobile/mpub/j$a;->a:Lcom/moat/analytics/mobile/mpub/j$a;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_c8

    const-string v9, "0"

    const-string v10, "1"

    if-ne v7, v8, :cond_2f

    move-object v7, v9

    goto :goto_30

    :cond_2f
    move-object v7, v10

    :goto_30
    :try_start_30
    iget-boolean v8, v1, Lcom/moat/analytics/mobile/mpub/s$b;->e:Z

    if-eqz v8, :cond_36

    move-object v8, v10

    goto :goto_37

    :cond_36
    move-object v8, v9

    :goto_37
    iget-boolean v11, v1, Lcom/moat/analytics/mobile/mpub/s$b;->d:Z

    if-eqz v11, :cond_3c

    move-object v9, v10

    :cond_3c
    const-string v10, "versionHash"

    const-string v11, "422d7e65812d34458dfd0c5f14e8141470b6e2ae"

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "appName"

    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "namespace"

    const-string v10, "MPUB"

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "version"

    const-string v10, "2.6.6"

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "deviceOS"

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "isNative"

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "appId"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "source"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "carrier"

    iget-object v3, v1, Lcom/moat/analytics/mobile/mpub/s$b;->b:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sim"

    iget-object v3, v1, Lcom/moat/analytics/mobile/mpub/s$b;->a:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "phone"

    iget-object v1, v1, Lcom/moat/analytics/mobile/mpub/s$b;->c:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "buildFp"

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "buildModel"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "buildMfg"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "buildBrand"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "buildProduct"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "buildTags"

    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "f1"

    invoke-interface {v2, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "f2"

    invoke-interface {v2, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_be

    const-string v0, "aqzx"

    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_be
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_c7} :catch_c8

    return-object v0

    :catch_c8
    const-string v0, "{}"

    return-object v0
.end method

.method static synthetic h(Lcom/moat/analytics/mobile/mpub/j;)V
    .registers 1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/j;->e()V

    return-void
.end method

.method private i()V
    .registers 4

    const/4 v0, 0x3

    const-string v1, "JavaScriptBridge"

    const-string v2, "Stopping metadata reporting loop"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/i;->a()Lcom/moat/analytics/mobile/mpub/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/moat/analytics/mobile/mpub/i;->a(Lcom/moat/analytics/mobile/mpub/j;)V

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/i;->a()Lcom/moat/analytics/mobile/mpub/i;

    move-result-object v0

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/s;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/moat/analytics/mobile/mpub/j;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/moat/analytics/mobile/mpub/i;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method a()V
    .registers 6

    const/4 v0, 0x3

    const-string v1, "JavaScriptBridge"

    const-string v2, "webViewReady"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/moat/analytics/mobile/mpub/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_35

    const-string v2, "webViewReady first time"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/j;->i()V

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/j;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/moat/analytics/mobile/mpub/j;->g(Ljava/lang/String;)V

    goto :goto_20

    :cond_30
    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/j;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_35
    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/j;->c()V

    return-void
.end method

.method a(Lcom/moat/analytics/mobile/mpub/b;)V
    .registers 5

    if-eqz p1, :cond_22

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adding tracker"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/moat/analytics/mobile/mpub/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JavaScriptBridge"

    invoke-static {v0, v2, p0, v1}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/j;->i:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "javascript: if(typeof MoatMAK !== \'undefined\'){MoatMAK.crts(%s);}"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/mpub/j;->f(Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/j;->g:Z

    if-eqz v0, :cond_d

    const/4 p1, 0x3

    const-string p2, "JavaScriptBridge"

    const-string v0, "Can\'t dispatch, already cleaned up"

    invoke-static {p1, p2, p0, v0}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_d
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/j;->f()Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "javascript:%s.dispatchEvent(%s);"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/mpub/j;->g(Ljava/lang/String;)V

    goto :goto_37

    :cond_32
    iget-object p1, p0, Lcom/moat/analytics/mobile/mpub/j;->j:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_37
    return-void
.end method

.method b()V
    .registers 4

    const/4 v0, 0x3

    const-string v1, "JavaScriptBridge"

    const-string v2, "Cleaning up"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/j;->g:Z

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/j;->i()V

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/j;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/moat/analytics/mobile/mpub/b;

    invoke-direct {p0, v1}, Lcom/moat/analytics/mobile/mpub/j;->d(Lcom/moat/analytics/mobile/mpub/b;)V

    goto :goto_18

    :cond_2e
    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/j;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/i;->a()Lcom/moat/analytics/mobile/mpub/i;

    move-result-object v0

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/s;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/moat/analytics/mobile/mpub/j;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/moat/analytics/mobile/mpub/i;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method b(Lcom/moat/analytics/mobile/mpub/b;)V
    .registers 5

    const-string v0, "startTracking"

    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/mpub/j;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting tracking on tracker"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/moat/analytics/mobile/mpub/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JavaScriptBridge"

    invoke-static {v0, v2, p0, v1}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/moat/analytics/mobile/mpub/b;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "javascript: if(typeof MoatMAK !== \'undefined\'){MoatMAK.mqjh(\"%s\");}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/moat/analytics/mobile/mpub/j;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/i;->a()Lcom/moat/analytics/mobile/mpub/i;

    move-result-object v0

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/s;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/moat/analytics/mobile/mpub/i;->a(Landroid/content/Context;Lcom/moat/analytics/mobile/mpub/b;)V

    :cond_3d
    return-void
.end method

.method b(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "markUserInteractionEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "JavaScriptBridge"

    invoke-static {v1, v2, p0, v0}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "javascript: if(typeof MoatMAK !== \'undefined\'){MoatMAK.ucbx(%s);}"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/mpub/j;->f(Ljava/lang/String;)V

    return-void
.end method

.method c(Lcom/moat/analytics/mobile/mpub/b;)V
    .registers 8

    const-string v0, "JavaScriptBridge"

    iget-boolean v1, p0, Lcom/moat/analytics/mobile/mpub/j;->g:Z

    const/4 v2, 0x0

    if-nez v1, :cond_53

    :try_start_7
    const-string v1, "stopTracking"

    invoke-direct {p0, v1}, Lcom/moat/analytics/mobile/mpub/j;->d(Ljava/lang/String;)Z

    move-result v1
    :try_end_d
    .catch Lcom/moat/analytics/mobile/mpub/n; {:try_start_7 .. :try_end_d} :catch_3f

    if-eqz v1, :cond_41

    const/4 v1, 0x3

    :try_start_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ending tracking on tracker"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/moat/analytics/mobile/mpub/b;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, p0, v3}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "javascript: if(typeof MoatMAK !== \'undefined\'){MoatMAK.egpw(\"%s\");}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/moat/analytics/mobile/mpub/b;->e:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/moat/analytics/mobile/mpub/j;->g(Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_37} :catch_38
    .catch Lcom/moat/analytics/mobile/mpub/n; {:try_start_10 .. :try_end_37} :catch_3f

    goto :goto_41

    :catch_38
    move-exception v1

    :try_start_39
    const-string v3, "Failed to end impression."

    invoke-static {v0, p0, v3, v1}, Lcom/moat/analytics/mobile/mpub/p;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3e
    .catch Lcom/moat/analytics/mobile/mpub/n; {:try_start_39 .. :try_end_3e} :catch_3f

    goto :goto_41

    :catch_3f
    move-exception v0

    move-object v2, v0

    :cond_41
    :goto_41
    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/j;->n:Lcom/moat/analytics/mobile/mpub/j$a;

    sget-object v1, Lcom/moat/analytics/mobile/mpub/j$a;->b:Lcom/moat/analytics/mobile/mpub/j$a;

    if-ne v0, v1, :cond_4b

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/mpub/j;->d(Lcom/moat/analytics/mobile/mpub/b;)V

    goto :goto_4e

    :cond_4b
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/j;->b()V

    :goto_4e
    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/j;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_53
    if-nez v2, :cond_56

    return-void

    :cond_56
    throw v2
.end method

.method c(Ljava/lang/String;)V
    .registers 11

    const/4 v0, 0x3

    const-string v1, "JavaScriptBridge"

    const-string v2, "flushDispatchQueue"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_62

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v3, 0x0

    :goto_19
    const/16 v4, 0xa

    if-ge v3, v4, :cond_2b

    iget-object v4, p0, Lcom/moat/analytics/mobile/mpub/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_2b
    iget-object v3, p0, Lcom/moat/analytics/mobile/mpub/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    div-int/2addr v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/moat/analytics/mobile/mpub/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_42
    if-ge v4, v3, :cond_4c

    iget-object v5, p0, Lcom/moat/analytics/mobile/mpub/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    :cond_4c
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/moat/analytics/mobile/mpub/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_50

    :cond_62
    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    const-string v4, ""

    const/4 v5, 0x1

    :goto_73
    iget-object v6, p0, Lcom/moat/analytics/mobile/mpub/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9e

    if-ge v5, v2, :cond_9e

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/moat/analytics/mobile/mpub/j;->j:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0x7d0

    if-le v7, v8, :cond_95

    goto :goto_9e

    :cond_95
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    goto :goto_73

    :cond_9e
    :goto_9e
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "javascript:%s.dispatchMany([%s])"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/mpub/j;->g(Ljava/lang/String;)V

    :cond_b2
    iget-object p1, p0, Lcom/moat/analytics/mobile/mpub/j;->j:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method protected finalize()V
    .registers 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    const/4 v0, 0x3

    const-string v1, "JavaScriptBridge"

    const-string v2, "finalize"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/j;->b()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/Exception;)V

    :goto_13
    return-void
.end method
