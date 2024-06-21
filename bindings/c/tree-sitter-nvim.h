#ifndef TREE_SITTER_NVIM_H_
#define TREE_SITTER_NVIM_H_

typedef struct TSLanguage TSLanguage;

#ifdef __cplusplus
extern "C" {
#endif

const TSLanguage *tree_sitter_nvim(void);

#ifdef __cplusplus
}
#endif

#endif // TREE_SITTER_NVIM_H_
