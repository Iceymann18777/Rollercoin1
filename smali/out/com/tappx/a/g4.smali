.class public Lcom/tappx/a/g4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tappx/a/o4;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tappx/a/i4;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tappx/a/g4;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    sput v0, Lcom/tappx/a/g4;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Lcom/tappx/a/g4;->a(Landroid/content/Context;)I

    move-result p1

    sput p1, Lcom/tappx/a/g4;->b:I

    return-void
.end method

.method private a(Landroid/content/Context;)I
    .registers 4

    .line 1
    sget v0, Lcom/tappx/a/g4;->b:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    const/4 v0, 0x0

    .line 5
    :try_start_6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 6
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 7
    sput p1, Lcom/tappx/a/g4;->b:I
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_18} :catch_19

    return p1

    :catch_19
    move-exception p1

    .line 10
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v0
.end method

.method private a()Z
    .registers 3

    .line 15
    sget v0, Lcom/tappx/a/g4;->b:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private b()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/g4;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 16
    invoke-direct {p0}, Lcom/tappx/a/g4;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 17
    sget-object v0, Lcom/tappx/a/o4;->a:Ljava/lang/String;

    sget-object v1, Lcom/tappx/a/g4;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_e
    return-object p1
.end method

.method public a(Landroid/webkit/WebView;)V
    .registers 4

    .line 11
    invoke-direct {p0}, Lcom/tappx/a/g4;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1d

    .line 14
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tappx/a/i4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_1d
    return-void
.end method
