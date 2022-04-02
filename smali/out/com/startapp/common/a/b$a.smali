.class public final Lcom/startapp/common/a/b$a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/common/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 4

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/startapp/common/a/b$a;->a:Ljava/lang/String;

    .line 117
    iput-boolean p2, p0, Lcom/startapp/common/a/b$a;->b:Z

    .line 118
    iput-object p3, p0, Lcom/startapp/common/a/b$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/startapp/common/a/b$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .registers 2

    .line 126
    iget-boolean v0, p0, Lcom/startapp/common/a/b$a;->b:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/startapp/common/a/b$a;->c:Ljava/lang/String;

    return-object v0
.end method
