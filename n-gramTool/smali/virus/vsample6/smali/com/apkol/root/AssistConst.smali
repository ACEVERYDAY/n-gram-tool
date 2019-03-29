.class public Lcom/apkol/root/AssistConst;
.super Ljava/lang/Object;
.source "AssistConst.java"


# static fields
.field private static ah:Lcom/apkol/root/AssistConst;


# instance fields
.field public final A:Ljava/lang/String;

.field public final B:Ljava/lang/String;

.field public final C:Ljava/lang/String;

.field public final D:Ljava/lang/String;

.field public final E:Ljava/lang/String;

.field public F:Ljava/lang/String;

.field public final G:Ljava/lang/String;

.field public final H:Ljava/lang/String;

.field public final I:Ljava/lang/String;

.field public final J:Ljava/lang/String;

.field public final K:Ljava/lang/String;

.field public final L:Ljava/lang/String;

.field public final M:Ljava/lang/String;

.field public final N:Ljava/lang/String;

.field public final O:Ljava/lang/String;

.field public final P:Ljava/lang/String;

.field public final Q:Ljava/lang/String;

.field public final R:Ljava/lang/String;

.field public S:Ljava/lang/String;

.field public T:Ljava/lang/String;

.field public final U:I

.field public final V:I

.field public final W:I

.field public final X:I

.field public final Y:I

.field public final Z:I

.field public a:Z

.field public aa:I

.field public ab:I

.field public ac:I

.field public ad:I

.field public ae:I

.field public af:I

.field private final ag:Ljava/lang/String;

.field private ai:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:Ljava/lang/String;

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:I

.field public final v:I

.field public final w:I

.field public final x:Ljava/lang/String;

.field public final y:Ljava/lang/String;

.field public final z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/16 v6, 0x57

    const/16 v5, 0x54

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-class v0, Lcom/apkol/root/AssistConst;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/AssistConst;->ag:Ljava/lang/String;

    .line 18
    iput-boolean v3, p0, Lcom/apkol/root/AssistConst;->a:Z

    .line 20
    const-string v0, "main_root"

    iput-object v0, p0, Lcom/apkol/root/AssistConst;->b:Ljava/lang/String;

    .line 21
    iput v4, p0, Lcom/apkol/root/AssistConst;->c:I

    .line 22
    iput v2, p0, Lcom/apkol/root/AssistConst;->d:I

    .line 25
    const-string v0, "/data/local/tmp/"

    iput-object v0, p0, Lcom/apkol/root/AssistConst;->e:Ljava/lang/String;

    .line 27
    const-string v0, "/data/app/"

    iput-object v0, p0, Lcom/apkol/root/AssistConst;->f:Ljava/lang/String;

    .line 30
    const-string v0, "http://webserver.onekeyrom.com"

    iput-object v0, p0, Lcom/apkol/root/AssistConst;->g:Ljava/lang/String;

    .line 31
    const/16 v0, 0x50

    iput v0, p0, Lcom/apkol/root/AssistConst;->h:I

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apkol/root/AssistConst;->g:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/apkol/root/AssistConst;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 33
    const-string v1, "/PackageService.asmx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/AssistConst;->i:Ljava/lang/String;

    .line 40
    const/16 v0, 0x5b

    iput v0, p0, Lcom/apkol/root/AssistConst;->j:I

    .line 42
    iput v6, p0, Lcom/apkol/root/AssistConst;->k:I

    .line 43
    const/16 v0, 0x62

    iput v0, p0, Lcom/apkol/root/AssistConst;->l:I

    .line 44
    const/16 v0, 0x5c

    iput v0, p0, Lcom/apkol/root/AssistConst;->m:I

    .line 45
    iput v5, p0, Lcom/apkol/root/AssistConst;->n:I

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apkol/root/AssistConst;->o:Ljava/util/Map;

    .line 68
    iput v3, p0, Lcom/apkol/root/AssistConst;->p:I

    .line 69
    iput v4, p0, Lcom/apkol/root/AssistConst;->q:I

    .line 70
    iput v2, p0, Lcom/apkol/root/AssistConst;->r:I

    .line 71
    const/4 v0, 0x3

    iput v0, p0, Lcom/apkol/root/AssistConst;->s:I

    .line 72
    const/4 v0, 0x4

    iput v0, p0, Lcom/apkol/root/AssistConst;->t:I

    .line 73
    const/4 v0, 0x5

    iput v0, p0, Lcom/apkol/root/AssistConst;->u:I

    .line 74
    const/4 v0, 0x6

    iput v0, p0, Lcom/apkol/root/AssistConst;->v:I

    .line 83
    iput v2, p0, Lcom/apkol/root/AssistConst;->w:I

    .line 100
    const-string v0, "onekeyrom.com"

    iput-object v0, p0, Lcom/apkol/root/AssistConst;->x:Ljava/lang/String;

    .line 101
    const-string v0, "onekeyroot"

    iput-object v0, p0, Lcom/apkol/root/AssistConst;->y:Ljava/lang/String;

    .line 102
    const-string v0, "su"

    iput-object v0, p0, Lcom/apkol/root/AssistConst;->z:Ljava/lang/String;

    .line 103
    const-string v0, "busybox"

    iput-object v0, p0, Lcom/apkol/root/AssistConst;->A:Ljava/lang/String;

    .line 104
    const-string v0, "romt"

    iput-object v0, p0, Lcom/apkol/root/AssistConst;->B:Ljava/lang/String;

    .line 105
    const-string v0, "onekeyrootseckill.sh"

    iput-object v0, p0, Lcom/apkol/root/AssistConst;->C:Ljava/lang/String;

    .line 106
    const-string v0, "install-recovery.sh"

    iput-object v0, p0, Lcom/apkol/root/AssistConst;->D:Ljava/lang/String;

    .line 107
    const-string v0, "99SuperSUDaemon"

    iput-object v0, p0, Lcom/apkol/root/AssistConst;->E:Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apkol/root/AssistConst;->F:Ljava/lang/String;

    .line 111
    const-string v0, "realroot"

    iput-object v0, p0, Lcom/apkol/root/AssistConst;->G:Ljava/lang/String;

    .line 112
    const-string v0, ".apkol_root1"

    iput-object v0, p0, Lcom/apkol/root/AssistConst;->H:Ljava/lang/String;

    .line 114
    const-string v0, "psneuter.script"

    iput-object v0, p0, Lcom/apkol/root/AssistConst;->I:Ljava/lang/String;

    .line 115
    const-string v0, ".apkol_root.sh"

    iput-object v0, p0, Lcom/apkol/root/AssistConst;->J:Ljava/lang/String;

    .line 119
    const-string v0, "newrealroot"

    iput-object v0, p0, Lcom/apkol/root/AssistConst;->K:Ljava/lang/String;

    .line 120
    const-string v0, ".new_apkol_root2"

    iput-object v0, p0, Lcom/apkol/root/AssistConst;->L:Ljava/lang/String;

    .line 123
    const-string v0, "miroot"

    iput-object v0, p0, Lcom/apkol/root/AssistConst;->M:Ljava/lang/String;

    .line 124
    const-string v0, ".new_apkol_root1"

    iput-object v0, p0, Lcom/apkol/root/AssistConst;->N:Ljava/lang/String;

    .line 128
    const-string v0, "frameroot.apk"

    iput-object v0, p0, Lcom/apkol/root/AssistConst;->O:Ljava/lang/String;

    .line 129
    const-string v0, "libframa"

    iput-object v0, p0, Lcom/apkol/root/AssistConst;->P:Ljava/lang/String;

    .line 130
    const-string v0, "sploit.jar"

    iput-object v0, p0, Lcom/apkol/root/AssistConst;->Q:Ljava/lang/String;

    .line 131
    const-string v0, "lib.so"

    iput-object v0, p0, Lcom/apkol/root/AssistConst;->R:Ljava/lang/String;

    .line 134
    const-string v0, "/data/data/bmtet.wwjx.eat/files/busybox"

    iput-object v0, p0, Lcom/apkol/root/AssistConst;->S:Ljava/lang/String;

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apkol/root/AssistConst;->g:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/GetJson.aspx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/AssistConst;->T:Ljava/lang/String;

    .line 140
    const/16 v0, 0x1000

    iput v0, p0, Lcom/apkol/root/AssistConst;->U:I

    .line 142
    const/16 v0, 0x2000

    iput v0, p0, Lcom/apkol/root/AssistConst;->V:I

    .line 144
    const/16 v0, 0x3000

    iput v0, p0, Lcom/apkol/root/AssistConst;->W:I

    .line 146
    const/16 v0, 0x4000

    iput v0, p0, Lcom/apkol/root/AssistConst;->X:I

    .line 148
    const/16 v0, 0x5000

    iput v0, p0, Lcom/apkol/root/AssistConst;->Y:I

    .line 150
    const/16 v0, 0x6000

    iput v0, p0, Lcom/apkol/root/AssistConst;->Z:I

    .line 153
    const/16 v0, 0x101

    iput v0, p0, Lcom/apkol/root/AssistConst;->aa:I

    .line 154
    const/16 v0, 0x102

    iput v0, p0, Lcom/apkol/root/AssistConst;->ab:I

    .line 155
    const/16 v0, 0x103

    iput v0, p0, Lcom/apkol/root/AssistConst;->ac:I

    .line 157
    const/16 v0, 0x104

    iput v0, p0, Lcom/apkol/root/AssistConst;->ad:I

    .line 158
    const/16 v0, 0x105

    iput v0, p0, Lcom/apkol/root/AssistConst;->ae:I

    .line 162
    const v0, 0x927c0

    iput v0, p0, Lcom/apkol/root/AssistConst;->af:I

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apkol/root/AssistConst;->ai:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/apkol/root/AssistConst;->o:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RUNROOTSHELL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/apkol/root/AssistConst;->o:Ljava/util/Map;

    const/16 v1, 0x62

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MIDDLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lcom/apkol/root/AssistConst;->o:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RENAME"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-void
.end method

.method public static a()Lcom/apkol/root/AssistConst;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/apkol/root/AssistConst;->ah:Lcom/apkol/root/AssistConst;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/apkol/root/AssistConst;

    invoke-direct {v0}, Lcom/apkol/root/AssistConst;-><init>()V

    sput-object v0, Lcom/apkol/root/AssistConst;->ah:Lcom/apkol/root/AssistConst;

    .line 171
    :cond_0
    sget-object v0, Lcom/apkol/root/AssistConst;->ah:Lcom/apkol/root/AssistConst;

    return-object v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/apkol/utils/i;->a()Lcom/apkol/utils/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apkol/utils/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "debug.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    invoke-static {}, Lcom/apkol/utils/i;->a()Lcom/apkol/utils/i;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/apkol/utils/i;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    .line 220
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 221
    if-eqz v1, :cond_0

    .line 222
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/apkol/root/AssistConst;->af:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/apkol/root/AssistConst;->ag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OVER_TIME = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/apkol/root/AssistConst;->af:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apkol/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/apkol/root/AssistConst;->ai:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 183
    invoke-virtual {p0, p1}, Lcom/apkol/root/AssistConst;->getAESSeed(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apkol/root/AssistConst;->ai:Ljava/lang/String;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/apkol/root/AssistConst;->ai:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 189
    invoke-static {}, Lcom/apkol/utils/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-direct {p0, p1}, Lcom/apkol/root/AssistConst;->c(Landroid/content/Context;)V

    .line 205
    :cond_0
    invoke-static {}, Lcom/apkol/utils/l;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    const-string v0, "http://192.168.1.212:8089/PackageService.asmx"

    iput-object v0, p0, Lcom/apkol/root/AssistConst;->i:Ljava/lang/String;

    .line 208
    const-string v0, "http://192.168.1.212:8089/GetJson.aspx"

    iput-object v0, p0, Lcom/apkol/root/AssistConst;->T:Ljava/lang/String;

    .line 210
    :cond_1
    return-void
.end method

.method public native getAESSeed(Landroid/content/Context;)Ljava/lang/String;
.end method
