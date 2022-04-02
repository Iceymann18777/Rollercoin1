.class public Lcom/tappx/a/y0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tappx/a/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/y0$a;->a:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lcom/tappx/a/y0$a;->b:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/y0$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/tappx/a/y0$a;->b:Z

    return v0
.end method
