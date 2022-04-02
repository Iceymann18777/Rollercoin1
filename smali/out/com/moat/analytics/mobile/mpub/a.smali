.class Lcom/moat/analytics/mobile/mpub/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/mpub/a$a;
    }
.end annotation


# static fields
.field static a:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Z = false

.field private static c:Landroid/app/Application; = null

.field private static d:I = 0x0

.field private static e:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(I)I
    .registers 1

    sput p0, Lcom/moat/analytics/mobile/mpub/a;->d:I

    return p0
.end method

.method static a()Landroid/app/Application;
    .registers 1

    sget-object v0, Lcom/moat/analytics/mobile/mpub/a;->c:Landroid/app/Application;

    return-object v0
.end method

.method static a(Landroid/app/Application;)V
    .registers 2

    sput-object p0, Lcom/moat/analytics/mobile/mpub/a;->c:Landroid/app/Application;

    sget-boolean v0, Lcom/moat/analytics/mobile/mpub/a;->b:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    sput-boolean v0, Lcom/moat/analytics/mobile/mpub/a;->b:Z

    new-instance v0, Lcom/moat/analytics/mobile/mpub/a$a;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/mpub/a$a;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_11
    return-void
.end method

.method static synthetic a(Landroid/app/Activity;)Z
    .registers 1

    invoke-static {p0}, Lcom/moat/analytics/mobile/mpub/a;->b(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Z)Z
    .registers 1

    sput-boolean p0, Lcom/moat/analytics/mobile/mpub/a;->e:Z

    return p0
.end method

.method static synthetic b()Z
    .registers 1

    sget-boolean v0, Lcom/moat/analytics/mobile/mpub/a;->e:Z

    return v0
.end method

.method private static b(Landroid/app/Activity;)Z
    .registers 2

    sget-object v0, Lcom/moat/analytics/mobile/mpub/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method static synthetic c()I
    .registers 1

    sget v0, Lcom/moat/analytics/mobile/mpub/a;->d:I

    return v0
.end method
