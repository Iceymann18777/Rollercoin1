.class public Lcom/startapp/common/a/i;
.super Ljava/lang/Object;
.source "StartAppSDK"


# static fields
.field private static a:Lcom/startapp/common/a/i;


# instance fields
.field private b:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    new-instance v0, Lcom/startapp/common/a/i;

    invoke-direct {v0}, Lcom/startapp/common/a/i;-><init>()V

    sput-object v0, Lcom/startapp/common/a/i;->a:Lcom/startapp/common/a/i;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/startapp/common/a/i;
    .registers 1

    .line 27
    sget-object v0, Lcom/startapp/common/a/i;->a:Lcom/startapp/common/a/i;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 17
    iget-object v0, p0, Lcom/startapp/common/a/i;->b:Landroid/widget/Toast;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 18
    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/common/a/i;->b:Landroid/widget/Toast;

    goto :goto_14

    .line 20
    :cond_c
    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object p1, p0, Lcom/startapp/common/a/i;->b:Landroid/widget/Toast;

    invoke-virtual {p1, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 23
    :goto_14
    iget-object p1, p0, Lcom/startapp/common/a/i;->b:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
